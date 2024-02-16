Using modules
=============

There is a terraform module in the folder `streamlit-azure-upload`. Use the module and call it with the necessary parameters (check its variables!). The existing module has a few missing parts that you will need to add before it can be used to make plan and apply work.

The submodule requires a storage account and container to work. In your root module, create those resources first.

The following links are useful here:
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/storage_account_sas  
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment

Also attempt to create an output parameter that returns the app URL that the module returns.

Once you managed to apply the configuration, you can view the app either by using the link returned by the output value or in Azure Portal by viewing your "Container App" resource and clicking the link under "Application Url".

Upload a file to the storage account using the container app and then check if
the file is actually stored in the storage container.

Optional:
- Feel free to `terraform destroy` this configuration. It may happpen that deletion of `azurerm_container_app_environment` is slow or won't work. In that case, feel free to just `CTRL+C` the destroy operation - We will cleanup this resource group anyway
