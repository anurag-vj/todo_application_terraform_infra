variable "aks" {
  description = "A map of AKS cluster configurations."
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    dns_prefix          = string
  }))
}

variable "tags" {
  description = "A map of tags to assign to the resource group."
  type        = map(string)
  default     = {}
}
