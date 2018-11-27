terraform {
  backend "remote" {
    organization  = "armchairlinguist"
    hostname      = "app.terraform.io"

    workspaces {
      name = "gh-terraform-random"
    }
  }
}
