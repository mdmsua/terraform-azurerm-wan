variable "metadata" {
  type = object({
    name = string
  })
}

variable "spec" {
  type = object({
    version           = string
    location          = string
    environment       = string
    regions           = list(string)
    private_dns_zones = list(string)
  })
}
