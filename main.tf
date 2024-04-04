terraform {
  required_providers {
    proxmox = {
      source  = "thegameprofi/proxmox"
      version = "2.10.0"
    }
  }
}

provider "proxmox" {
  pm_api_url           = var.pm_api_url
  pm_api_token_id      = var.pm_api_token_id
  pm_api_token_secret  = var.pm_api_token_secret
  pm_tls_insecure      = var.pm_tls_insecure
}

