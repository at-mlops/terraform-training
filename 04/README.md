Functions, data and conditions
==============================

Create a container in an existing storage account.

Reference the existing storage account from a previous task or the already existing storage account "atterraformvt5byn74" via the suitable `data` object (Search in the TF azurerm provider docs under "Storage" > "Data sources").

Create the container based on a variable name and a random string. If the
resulting name is longer than 12 characters, shorten it to 12 characters. To achieve this, find a suitable built-in function for strings (https://developer.hashicorp.com/terraform/language/functions). The access type should be again "blob".

If the storage account is yours from a previous task, add `storage_account = "mine"` to the *container's* metadata. Otherwise add the metadata `reuse_storage_account = "yes"` to the container's metadata.

Hint: Once the container is deployed, you can view its tags in Azure portal. Go to the container and navigate to the menu option "Metadata".

Optional:
- After you have finished above task, remove the entire container resource from your code and run `terraform plan` again. What happens?
- Now you can safely `terraform destroy` Terraform configurations of all previous tasks
