## Inputs

| Name                    | Description                                                                   | Type                     | Default | Required |
|-------------------------|-------------------------------------------------------------------------------|--------------------------|---------|----------|
| `name`                  | The name of the Network Security Group.                                       | `string`                 | n/a     | Yes      |
| `location`              | Azure region where the Network Security Group will be deployed.               | `string`                 | n/a     | Yes      |
| `resource_group_name`   | The name of the resource group in which this Network Security Group resides.  | `string`                 | n/a     | Yes      |

### Terragrunt Example

```hcl
terraform {
  source = "git::https://github.com/MauroRaya/terraform-azure-modules//network/security-group?ref=main"
}

inputs = {
  name                = "nsg-example"
  location            = "East US"
  resource_group_name = "rg-example"
}
```
