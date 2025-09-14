variable "managed_identities" {
  description = "A map of managed identities to create."
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}

variable "tags" {
  description = "A map of tags to assign to the resource group."
  type        = map(string)
  default     = {}
}
