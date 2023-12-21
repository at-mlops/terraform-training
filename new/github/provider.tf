terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = "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"
  owner = "ghaering"
}
