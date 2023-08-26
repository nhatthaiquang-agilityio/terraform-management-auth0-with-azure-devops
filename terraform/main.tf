terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm",
      version = "3.67"
    }

    auth0 = {
      source  = "auth0/auth0"
      version = "0.47"
    }
  }

  backend "azurerm" {
    access_key = var.access_key
  }
}

provider "auth0" {
  domain        = var.auth0_domain
  client_id     = var.auth0_client_id
  client_secret = var.auth0_client_secret
}

provider "azurerm" {
  version = "3.67"
  features {}
}

resource "auth0_client" "spa_terraform" {
  name            = "WebAppSPA - ${var.environment}"
  description     = "My Web App SPA is created through Terraform "
  app_type        = "spa"
  callbacks       = var.callbacks
  allowed_origins = var.allowed_origins
  allowed_logout_urls  = var.allowed_logout_urls
  web_origins    = var.web_origins
  oidc_conformant = true
  grant_types = ["authorization_code", "refresh_token"]

  jwt_configuration {
    alg                 = "RS256"
  }

  refresh_token {
    leeway          = 0
    token_lifetime  = 1557500
    rotation_type   = "rotating"
    expiration_type = "expiring"
    infinite_token_lifetime = false
    infinite_idle_token_lifetime = false
  }
}

# Output the client id of the created spa app
output "application_client_id" {
  value = auth0_client.spa_terraform.client_id
}

output "application_client_secret" {
  value = auth0_client.spa_terraform.client_secret
  sensitive = true
}
