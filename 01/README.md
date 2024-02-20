Terraform basic workflow
========================

## Part 1: Getting Started by creating a File
Use the [Terraform CLI](https://developer.hashicorp.com/terraform/cli/commands) commands `terraform init`, `terraform plan`, and `terraform apply` to write a [Terraform Configuration](https://developer.hashicorp.com/terraform/language) to accomplish the following tasks and answer the corresponding questions:
- Create a file named `test.txt` with the  following content:
  ```
  This file was created during the terraform workshop.
  ```
- Which providers are used?


## Part 2: Random Identifier
Often resources in remote clouds may require a worldwide unique name. See [AmazonS3 Bucket Naming Rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html) for example:
```
Bucket names must be unique across all AWS accounts in all the AWS Regions within a partition. A partition is a grouping of Regions. A bucket name cannot be used by another AWS account in the same partition until the bucket is deleted.
```
It is therefore sometimes necessary to include random suffixes, as it provides an easy way to create multiple resources from the same configuration.

- Change the Configuration to include a random identifier/number. 
- Some Hints:
  - Use [Terraform Random Provider](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer)
  - You may need to run `terraform init` again, as random is another provider.
  - To include the ID into the filename, take a look into [Terraform String Interpolation](https://developer.hashicorp.com/terraform/language/expressions/strings#interpolation) or [Terraform Functions: format](https://developer.hashicorp.com/terraform/language/functions/format)
  

## Part 3: Destroy 🧨🔥💣
- Delete the created `test.txt`. Can you utilize Terraform to do this?