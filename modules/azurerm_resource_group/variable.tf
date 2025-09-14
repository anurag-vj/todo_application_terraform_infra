variable "resource_group" {
  description = "A map of resource groups to create."
  type = map(object({
    name     = string
    location = string
  }))
}

variable "tags" {
  description = "A map of tags to assign to the resource group."
  type        = map(string)
  default     = {}
}
