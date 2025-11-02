variable "name" {}
variable "location" {}
variable "resource_group_name" {}
variable "address_space" {
  type = list(string)
}
variable "dns_servers" {
  type = list(string)
  default = []
}
variable "subnets" {
  type = list(object({
    name             = string
    address_prefixes = list(string)
    security_group   = optional(string)
  }))
  default = []
}