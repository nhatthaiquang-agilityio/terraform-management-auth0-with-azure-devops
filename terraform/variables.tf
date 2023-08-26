variable "auth0_client_id" {
    description = "Client Id of Auth0(M2M)"
    type        = string
}

variable "auth0_client_secret" {
    description = "Client Secret of Auth0(M2M)"
    type        = string
}

variable "auth0_domain" {
    description = "Auth0 Domain"
    type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "callbacks" {
  description = "url callbacks"
  type        = []
}

variable "allowed_logout_urls" {
  description = "allowed logout urls"
  type        = []
}

variable "allowed_origins" {
  description = "allowed origins"
  type        = []
}

variable "web_origins" {
  description = "web origins"
  type        = []
}

variable "access_key" {
  description = "access key to access the Azure Storage Account"
  type        = ""
}
