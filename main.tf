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

module "infrastructure_aws_manager" {
  source = "./modules/repository"

  name               = "infrastructure-aws-manager"
  description        = "Infrastructure-as-Code for managing AWS resources with Terraform"
  visibility         = "public"
  license_template   = "mit"
  gitignore_template = "Terraform"
  topics             = ["aws", "terraform", "infrastructure-as-code"]

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

module "shahid_2020" {
  source = "./modules/repository"

  name             = "shahid-2020"
  description      = "GitHub repository for profile"
  visibility       = "public"
  license_template = "mit"
  topics           = ["profile"]

  github_token = var.github_token
  github_owner = var.github_owner
}

module "ims_fe" {
  source = "./modules/repository"

  name        = "ims-fe"
  description = "IMS Frontend"
  visibility  = "public"
  topics      = ["frontend", "terraform", "javascript", "typescript", "react"]

  environments = ["production", "staging"]

  github_token = var.github_token
  github_owner = var.github_owner
}

module "ims_be" {
  source = "./modules/repository"

  name        = "ims-be"
  description = "IMS Backend"
  visibility  = "public"
  topics      = ["backend", "terraform", "python", "aws", "serverless"]

  environments = ["production", "staging"]

  github_token = var.github_token
  github_owner = var.github_owner
}