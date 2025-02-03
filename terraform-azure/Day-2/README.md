created another branch develop to check if new workspace is created or not.
It  was created as did change in the provider.tf
      cloud {
    organization = "Terraform_World_25"
    workspaces {
      name = "azure-terraform-codespc-DEV"   # name
    }
  }

used variable.tf file added input and output vars