provider "aws" {
  region = "us-east-2"
}

terraform {
  required_version = ">= 1.0"

  backend "s3" {
    bucket       = "devops-skool-tf-states"
    region       = "us-east-2"
    key          = "sell-my-stuff/terraform.tfstate"
    use_lockfile = true
  }
}
