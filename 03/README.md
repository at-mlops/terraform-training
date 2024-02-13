Locals, variables and outputs
=============================

- Create a local with the name `storage_account_name` (https://developer.hashicorp.com/terraform/language/values/locals). The value of this local should be some string with >3 chars plus the value of `random_string.storage_account_name.result`.
- Then use this local as a storage account name to create another Azure storage account with resource name `storage`, like in task 2. Further arguments for this storage account can be set identical to task 2
- Also create a variable `username` in your terraform project. On this new storage account, add a tag with the name `creator`. For the value of this tag, use the value of variable `username`
- Create a second resource of type `azurerm_storage_container` and resource name `container` (https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container). The container name should be "upload" and its access type should be "blob". This container must reference the to be created storage account
- Create an output named `full_account_name` - the value of this output should be the created storage account's name

Optional:

- When running plan or apply, Terraform will ask you about the value for the `username` variable. Figure out, how to set this value as part of the commands you run
