Terraform backend , i am not using Azure storage svc as i am using HCP, which manages workspace and states.

Manage workspace state
Each HCP Terraform workspace has its own separate state data, used for runs within that workspace.

State Usage in Terraform Runs
In remote runs, HCP Terraform automatically configures Terraform to use the workspace's state; the Terraform configuration does not need an explicit backend configuration. (If a backend configuration is present, it will be overridden.)