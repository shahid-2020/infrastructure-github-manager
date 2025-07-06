module "infrastructure_github_manager" {
  source = "./modules/repository"

  name               = "infrastructure-github-manager"
  description        = "Terraform-managed GitHub infrastructure"
  visibility         = "public"
  license_template   = "mit"
  gitignore_template = "Terraform"
  topics             = ["terraform", "infrastructure-as-code"]

  github_token = var.github_token
  github_owner = var.github_owner
}

module "network_traffic_analyzer" {
  source = "./modules/repository"

  name               = "network-traffic-analyzer"
  description        = "Network Traffic Analyzer using C"
  visibility         = "public"
  license_template   = "mit"
  gitignore_template = "C"
  topics             = ["c", "networking"]

  github_token = var.github_token
  github_owner = var.github_owner
}