variable "key_vault" {
  description = "A map of Key Vault configurations."
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
  }))
}

variable "tags" {
  description = "A map of tags to assign to the resource group."
  type        = map(string)
  default     = {}
}
