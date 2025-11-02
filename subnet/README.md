## Inputs

| Name                   | Description                                                          | Type          | Default | Required |
|------------------------|----------------------------------------------------------------------|---------------|---------|----------|
| `name`                 | The name of the subnet.                                              | `string`      | n/a     | Yes      |
| `resource_group_name`  | The name of the resource group where the subnet will be created.     | `string`      | n/a     | Yes      |
| `virtual_network_name` | The name of the virtual network in which the subnet will be created. | `string`      | n/a     | Yes      |
| `address_prefixes`     | The address prefixes to apply to the subnet.                         | `list(string)`| n/a     | No       |

### Terragrunt Example

```hcl
terraform {
  source = "git::https://github.com/MauroRaya/terraform-azure-modules//subnet?ref=main"
}

inputs = {
  name                 = "subnet-example"
  resource_group_name  = "rg-example"
  virtual_network_name = "vnet-example"
  address_prefixes     = ["10.0.1.0/24"]
}
