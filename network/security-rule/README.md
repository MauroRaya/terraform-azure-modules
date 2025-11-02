## Inputs

| Name                                         | Description                                                                         | Type           | Default | Required |
|----------------------------------------------|-------------------------------------------------------------------------------------|----------------|---------|----------|
| `name`                                       | The name of the network security rule.                                              | `string`       | n/a     | Yes      |
| `priority`                                   | The priority of the rule. Must be between 100 and 4096.                             | `number`       | n/a     | Yes      |
| `direction`                                  | The direction of traffic (`Inbound` or `Outbound`).                                 | `string`       | n/a     | Yes      |
| `access`                                     | Whether network traffic is allowed or denied (`Allow` or `Deny`).                   | `string`       | n/a     | Yes      |
| `protocol`                                   | Network protocol (`Tcp`, `Udp`, or `*`).                                            | `string`       | n/a     | Yes      |
| `source_port_range`                          | Source port or range (`*` for any).                                                 | `string`       | n/a     | Yes      |
| `destination_port_range`                     | Destination port or range (`*` for any).                                            | `string`       | n/a     | Yes      |
| `source_address_prefix`                      | CIDR, service tag, or `*` for any source.                                           | `string`       | n/a     | Yes      |
| `destination_address_prefix`                 | CIDR, service tag, or `*` for any destination.                                      | `string`       | n/a     | Yes      |
| `resource_group_name`                        | Resource group where the NSG exists.                                                | `string`       | n/a     | Yes      |
| `network_security_group_name`                | Name of the NSG where this rule will be created.                                    | `string`       | n/a     | Yes      |
| `description`                                | Optional description for the rule.                                                  | `string`       | `""`    | No       |
| `source_port_ranges`                         | List of source port ranges (alternative to `source_port_range`).                    | `list(string)` | `null`  | No       |
| `destination_port_ranges`                    | List of destination port ranges (alternative to `destination_port_range`).          | `list(string)` | `null`  | No       |
| `source_address_prefixes`                    | List of source address prefixes (alternative to `source_address_prefix`).           | `list(string)` | `null`  | No       |
| `destination_address_prefixes`               | List of destination address prefixes (alternative to `destination_address_prefix`). | `list(string)` | `null`  | No       |
| `source_application_security_group_ids`      | List of source Application Security Group IDs.                                      | `list(string)` | `null`  | No       |
| `destination_application_security_group_ids` | List of destination Application Security Group IDs.                                 | `list(string)` | `null`  | No       |

### Terragrunt Example

```hcl
terraform {
  source = "git::https://github.com/MauroRaya/terraform-azure-modules//network/security-rule?ref=main"
}

inputs = {
  name                          = "allow-http"
  priority                      = 200
  direction                     = "Inbound"
  access                        = "Allow"
  protocol                      = "Tcp"
  source_port_range             = "*"
  destination_port_range        = "80"
  source_address_prefix         = "*"
  destination_address_prefix    = "10.0.0.0/24"
  resource_group_name           = "rg-example"
  network_security_group_name   = "nsg-example"
}
```
