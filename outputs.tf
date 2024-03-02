output "name" {
  value = azurerm_virtual_wan.main.name
}

output "resource_group_name" {
  value = azurerm_virtual_wan.main.resource_group_name
}

output "subscription_id" {
  value = data.azurerm_subscription.main.subscription_id
}

output "private_dns_zones" {
  value = [azurerm_private_dns_zone.main[*].name]
}
