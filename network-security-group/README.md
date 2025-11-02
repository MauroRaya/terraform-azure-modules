## Inputs

| Name                    | Description                                                                   | Type                     | Default | Required |
|-------------------------|-------------------------------------------------------------------------------|--------------------------|---------|----------|
| `name`                  | The name of the Network Security Group.                                       | `string`                 | n/a     | Yes      |
| `location`              | Azure region where the Network Security Group will be deployed.               | `string`                 | n/a     | Yes      |
| `resource_group_name`   | The name of the resource group in which this Network Security Group resides.  | `string`                 | n/a     | Yes      |
| `security_rule`         | A list of security rule objects to apply to the NSG.                          | `list(object)`           | n/a     | No       |

### Terragrunt Example

```hcl
terraform {
  source = "git::https://github.com/MauroRaya/terraform-azure-modules//network/security-group?ref=main"
}

inputs = {
  name                = "nsg-example"
  location            = "East US"
  resource_group_name = "rg-example"

  security_rule = [
    {
      name                       = "allow-http"
      priority                   = 200
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "80"
      source_address_prefix      = "*"
      destination_address_prefix = "10.0.0.0/24"
    }
  ]
}
```
