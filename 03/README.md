Locals, variables and outputs
=============================

- Create a local value in the terraform project for a unique storage account
  name (https://developer.hashicorp.com/terraform/language/values/locals)
- Then use this as the storage account name to create an Azure storage account like before
- Also create a variable username in your terraform project and set a tag with
  the name "creator" and the value of the variable "username" on the storage
  account
- Next create an outputs named "storage_account_name" - the value of this
  output should be the created storage account's name
