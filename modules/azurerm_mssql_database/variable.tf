variable "mssql_database" {
  description = "A map of MSSQL Database configurations."
  type = map(object({
    db_name = string
  }))
}

variable "tags" {
  description = "A map of tags to assign to the resource group."
  type        = map(string)
  default     = {}
}
