resource "azurerm_virtual_network" "virtual_network" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  dns_servers         = var.dns_servers

  dynamic "subnet" {
    for_each = var.subnets
    content {
      name             = subnet.value.name
      address_prefixes = subnet.value.address_prefixes
      security_group   = lookup(subnet.value, "security_group", null)
    }
  }
}