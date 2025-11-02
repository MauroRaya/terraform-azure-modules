## Inputs

| Name                 | Description                                                                      | Type                                                                                                  | Default | Required |
|----------------------|----------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|---------|----------|
| `name`               | The name of the virtual network.                                                 | `string`                                                                                              | n/a     | Yes      |
| `location`           | The Azure region where the virtual network will be deployed.                     | `string`                                                                                              | n/a     | Yes      |
| `resource_group_name`| The name of the resource group in which to deploy the virtual network.           | `string`                                                                                              | n/a     | Yes      |
| `address_space`      | The address space used for the virtual network.                                  | `list(string)`                                                                                        | n/a     | Yes      |
| `dns_servers`        | A list of DNS servers to use for this virtual network.                           | `list(string)`                                                                                        | `[]`    | No       |
| `subnets`            | A list of subnet objects including name, address prefixes, and optional NSG.     | `list(object({ name = string, address_prefixes = list(string), security_group = optional(string) }))` | `[]`    | No       |

### Terragrunt Example

```hcl
terraform {
  source = "git::https://github.com/MauroRaya/terraform-azure-modules//virtual-network?ref=main"
}

inputs = {
  name                = "vnet-example"
  location            = "East US"
  resource_group_name = "rg-example"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = []
  subnets = [
    {
      name             = "subnet1"
      address_prefixes = ["10.0.1.0/24"]
    },
    {
      name             = "subnet2"
      address_prefixes = ["10.0.2.0/24"]
      security_group   = "nsg-example"
    }
  ]
}
