variable "identifier" {
  type     = string
  nullable = false
}

variable "display_name" {
  type     = string
  nullable = false
}

variable "additional_roles" {
  type     = list(string)
  nullable = false
  default  = []
}
