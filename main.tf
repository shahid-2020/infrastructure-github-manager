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

module "techind" {
  source = "./modules/repository"

  name               = "techind"
  description        = "Comprehensive technical indicators library for Go - Moving Averages, Oscillators, Momentum, Volatility, and more"
  visibility         = "public"
  license_template   = "mit"
  gitignore_template = "Go"
  topics             = ["go", "trading-indicators", "technical-analysis", "algorithmic-trading", "quantitative-finance", "financial-analysis", "trading-bot", "backtesting"]

  github_token = var.github_token
  github_owner = var.github_owner
}

module "gohlcv" {
  source = "./modules/repository"

  name               = "gohlcv"
  description        = "Go library for OHLCV (Open, High, Low, Close, Volume) market data from multiple providers"
  visibility         = "public"
  license_template   = "mit"
  gitignore_template = "Go"
  topics             = ["go", "market-data", "ohlcv"]

  github_token = var.github_token
  github_owner = var.github_owner
}

module "trading_server" {
  source = "./modules/repository"

  name               = "trading-server"
  description        = "High-performance trading server with real-time market data, order execution, and strategy management"
  visibility         = "public"
  license_template   = "mit"
  gitignore_template = "Go"
  topics             = ["trading-server", "algorithmic-trading"]

  github_token = var.github_token
  github_owner = var.github_owner
}