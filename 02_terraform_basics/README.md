# Terraform basics

## Pitch: why terraform

### Why terraform?

- repeatability
    - multiple environments
    - tear down and create again
- scalability
    - no limits for number of resources
    - the computer does the work, not you (clicking)
- Version control
    - IaC code can be put in Git
    - Reviews in pull-requests
- Automation
    - terraform workflow is automated
- Vendor independent
### Strengths and weaknesses

- very well suited for
    - cloud resource management
    - immutable infrastructure
- not so good for
    - managing software and configuration on virtual machines.


## Core workflow

### init

```bash
terraform init
```

### validate

```bash
terraform validate
```

### plan

```bash
terraform plan
```

### apply

```bash
terraform apply
```

### destroy

```bash
terraform destroy
```

## Practice workflow session
    
.tf scripts provided by trainers