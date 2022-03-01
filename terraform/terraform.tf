terraform {
    required_version = ">= 0.13"
    required_providers { 
        ovirt = { 
            source  = "local/ovirt/ovirt"
            version = "0.99.0"
        }
    }

	backend "http" {}

}

provider "ovirt" {
  username = "admin@internal"
  url      = "https://engine.marekexample.com/ovirt-engine/api"
  password = "redhat"
  tls_insecure = true
}

