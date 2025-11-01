## Inputs

| Name      | Description                                                | Type     | Default | Required |
|-----------|------------------------------------------------------------|----------|---------|----------|
| `name`    | The name of the resource group.                            | `string` | n/a     | Yes      |
| `location`| The Azure region where the resource group will be located. | `string` | n/a     | Yes      |

### Terragrunt Example

```hcl
terraform {
  source = "git::https://github.com/MauroRaya/terraform-azure-modules//resource-group?ref=main"
}

inputs = {
  name     = "rg-example"
  location = "East US"
}
```
