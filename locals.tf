locals {
  tags = {
    version = var.spec.version
    module  = "wan"
  }
  regional_private_dns_zones = [for value in setproduct(var.spec.regions, [for zone in var.spec.private_dns_zones : zone if contains("*", zone)]) : replace("*", value[0], value[1])]
  all_private_dns_zones      = setunion(local.regional_private_dns_zones, [for zone in var.spec.private_dns_zones : zone if !contains("*", zone)])
}
