Locals, variables and outputs
=============================

Quoting the Terraform Documentation [on variables and outputs](https://developer.hashicorp.com/terraform/language/values) and [on locals](https://developer.hashicorp.com/terraform/language/values/locals):
```
Input Variables serve as parameters for a Terraform module, so users can customize behavior without editing the source.

Output Values are like return values for a Terraform module.

Local Values are a convenience feature for assigning a short name to an expression.
```
```
If you're familiar with traditional programming languages, it can be useful to compare Terraform modules to function definitions:

- Input variables are like function arguments.
- Output values are like function return values.
- Local values are like a function's temporary local variables.
```

## Task
- Create a [local value]((https://developer.hashicorp.com/terraform/language/values/locals)) in the terraform project for a unique storage account name.
- Then use this as the storage account name to create an Azure storage account like before.
- Also create a [variable](https://developer.hashicorp.com/terraform/language/values/variables) username in your Terraform project.
  Set a tag with the name `creator` and the value of the variable `username` on the storage account.
- Create an [output](https://developer.hashicorp.com/terraform/language/values/outputs) named "storage_account_name". 
  The value of this output should be the created storage account's name.
