Using modules
=============

There is a terraform module in the folder streamlit-azure-upload. Use the
module and call it with the necessary parameters. The existing module has a few
missing parts that you will need to add before it can be used to make plan and
apply work.

The following links are useful here:

https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/storage_account_sas
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment

Also make sure that you create an output parameter that returns the app URL
that the module returns.

Upload a file to the storage account using the container app and then check if
the file is actually stored in the storage container.
