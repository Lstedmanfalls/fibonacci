provider "aws" {
  region = var.region
}

module "fibonnaci-modules" {
  source       = "app.terraform.io/lstedmanfalls/fibonnaci-modules/aws"
  version      = "1.0.0"
  environment  = var.environment
  az           = var.az
  region       = var.region
  project_name = local.name
}
