variable "name" {
  description = "Name of the repository"
  type        = string
}

variable "description" {
  description = "Repository description"
  type        = string
  default     = ""
}

variable "visibility" {
  description = "Repository visibility"
  type        = string
  default     = "private"
}

variable "topics" {
  description = "Repository topics"
  type        = list(string)
}

variable "license_template" {
  description = "License template"
  type        = string
  default     = ""
}

variable "gitignore_template" {
  description = "Gitignore template"
  type        = string
  default     = null
}

variable "require_last_push_approval" {
  description = "Require approval for the most recent push to a PR"
  type        = bool
  default     = false
}

variable "required_approving_review_count" {
  description = "Number of required approving reviews"
  type        = number
  default     = 0
}

variable "environments" {
  description = "Environment for the repository (e.g., production, staging)"
  type        = list(string)
  default     = []
}

variable "github_owner" {
  description = "GitHub owner (username or organization)"
  type        = string
}

variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}