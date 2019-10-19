terraform {
  backend "remote" {
    hostname     = var.tfe_hostname
    organization = var.tfe_org

    workspaces {
      name = var.tfe_workspace
    }
  }
}
