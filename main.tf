terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

# Reference existing OpenFaaS function namespace
data "kubernetes_namespace" "openfaas_fn" {
  metadata {
    name = "openfaas-fn"
  }
}
