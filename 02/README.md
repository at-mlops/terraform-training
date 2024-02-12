Create an Azure storage account
===============================

- Use terraform to define an Azure Storage account
  (https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account)
- Note that the storage account name must be unique worldwide across all Azure accounts
- Modify the storage.tf file to create the storage account with the following settings:
    - the storage account should be located in the Azure region "GermanyWestCentral"
    - the account replication type should be set to GRS
    - the storage account should be attached to the Azure resource group
      defined in the variables.tf file
      (https://developer.hashicorp.com/terraform/language/values/variables#using-input-variable-values)
- Use "terraform plan" to see what terraform would create
- Use "terraform apply" to create your storage account

Optional:

- Experiment with "terraform state ..." commands
  (https://developer.hashicorp.com/terraform/cli/commands/state)
    - List your terraform state
    - Explore your terraform state and display the values of the different items in the state
