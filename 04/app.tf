# Use a terraform module "app" with the necessary parameters for the module.
# The parameters needed can be found here: https://github.com/ghaering/streamlit-azure-upload/blob/main/terraform/variables.tf

module "app" {
  source                 = "git::https://github.com/ghaering/streamlit-azure-upload.git//terraform"

  # ...
}
