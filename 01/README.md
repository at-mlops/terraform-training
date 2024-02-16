Terraform basic workflow
========================

- Use terraform to create a file named "test.txt" with the content "This file
  was created during the workshop.". Use the `local_file` resource for this
- First, you need to run `terraform init` before continuing
- Run `terraform plan` and afterwards `terraform apply` to deploy the new resource.
- Once the file was deployed successfully, attempt to run `terraform plan -destroy` and finally `terraform destroy`

Optional:
- Change the filename of the resource and apply again. What happens?
