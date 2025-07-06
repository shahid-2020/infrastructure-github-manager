variable "github_owner" {
  description = "GitHub owner (user or organization) for the repositories"
  type        = string
  default     = "shahid-2020"
}

variable "github_token" {
  description = "GitHub token with permissions to manage repositories"
  type        = string
  sensitive   = true
}