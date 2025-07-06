resource "github_repository" "repository" {
  name        = var.name
  description = var.description
  visibility  = var.visibility
  auto_init   = true

  has_issues      = true
  has_discussions = true
  has_wiki        = false
  has_projects    = false

  allow_auto_merge            = true
  allow_rebase_merge          = true
  allow_squash_merge          = true
  allow_merge_commit          = false
  delete_branch_on_merge      = true
  squash_merge_commit_title   = "PR_TITLE"
  squash_merge_commit_message = "PR_BODY"

  allow_update_branch = true

  vulnerability_alerts = true
  archive_on_destroy   = true
  topics               = var.topics

  license_template   = var.license_template
  gitignore_template = var.gitignore_template
}

resource "github_repository_dependabot_security_updates" "dependabot_security_updates" {
  repository = github_repository.repository.name
  enabled    = true
}

resource "github_branch_default" "main_branch_default" {
  repository = github_repository.repository.name
  branch     = "main"
}

resource "github_branch_protection" "main_branch_protection" {
  repository_id = github_repository.repository.node_id
  pattern       = "main"

  enforce_admins      = true
  allows_deletions    = false
  allows_force_pushes = false

  require_conversation_resolution = true

  required_status_checks {
    strict = true
    # contexts = ["ci/test", "ci/lint"]
  }

  required_pull_request_reviews {
    require_last_push_approval      = true
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = false
    required_approving_review_count = 1
  }

  lock_branch = true
}

resource "github_actions_repository_permissions" "actions_repository_permissions" {
  repository      = github_repository.repository.name
  allowed_actions = "selected"

  allowed_actions_config {
    github_owned_allowed = true
    verified_allowed     = true
    patterns_allowed     = []
  }
}

resource "github_repository_environment" "production_environment" {
  repository  = github_repository.repository.name
  environment = "production"
  wait_timer  = 0
}
