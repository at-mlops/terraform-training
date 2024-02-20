Create an Azure storage account
===============================

## Part 1: Setting up the Azure Provider
- Use the [Azure Command Line Utility to authenticate](https://learn.microsoft.com/en-us/cli/azure/authenticate-azure-cli) in your terminal e.g. by running `az login`.

- Execute `terraform init` to set up terraform with the [azurerm Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs).
- You may encounter the following error:
  ```
  Error: Error ensuring Resource Providers are registered.
  ```
  In this case, your provided cloud access is limited and needs special permissions to register Resource Providers in Azure.
  Alternatively, you can [skip the provider registration](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs#skip_provider_registration ).
  For this take a look at the comment in the `providers.tf` file.


## Part 2: Setting up a Storage Account

Use terraform to define an [Azure Storage Account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account):
- Note that the storage account name must be unique worldwide across all Azure accounts.
- Modify the `storage.tf` file to create the storage account with the following settings:
    - the storage account should be located in the Azure region "GermanyWestCentral"
    - the account replication type should be set to GRS.
    - the storage account should be attached to the Azure resource group defined in the variables.tf file [using input variables](https://developer.hashicorp.com/terraform/language/values/variables#using-input-variable-values).
- Use "terraform plan" to see what terraform would create.
  - Terraform will ask you to provide a value the resource group input defined in `variables.tf`. 
  If not stated otherwise by your instructor use `RG_train_terraform_mlops`. 
  - You can also set it as the default value of the variable ([Examples](https://developer.hashicorp.com/terraform/language/values/variables#declaring-an-input-variable)).
- Use "terraform apply" to create your storage account.

## Optional

Experiment with ["terraform state ..." commands](https://developer.hashicorp.com/terraform/cli/commands/state)
  - List your terraform state
  - Explore your terraform state and display the values of the different items in the state


# Part 3: Destruction
Destroy your created resources.
