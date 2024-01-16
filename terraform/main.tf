provider "aws" {
  region = var.region
}

module "gametime-takehome-parent-respository" {
  source       = "app.terraform.io/lstedmanfalls/gametime-takehome-parent-respository/aws"
  version      = "1.0.0"
  environment  = var.environment
  az           = var.az
  region       = var.region
  project_name = local.name
}
