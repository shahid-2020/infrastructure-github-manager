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
}

variable "gitignore_template" {
  description = "Gitignore template"
  type        = string
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