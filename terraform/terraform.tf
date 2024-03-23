terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"   # Latest version as of now
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"    # Latest version as of now
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"    # Latest version as of now
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"    # Latest version as of now
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"   # Latest version as of now
    }
  }

  backend "s3" {
    bucket = "vprofile-actions-2"
    key    = "backend/terraform.tfstate"
    region = "us-east-1"
  }

  required_version = "~> 1.7.5"   # Latest version as of now
}



