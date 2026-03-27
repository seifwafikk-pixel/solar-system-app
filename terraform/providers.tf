terraform {
  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 2.1"
    }
  }
}

provider "vercel" {
  api_token = var.vercel_api_token
}
