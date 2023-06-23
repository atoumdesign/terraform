variable "rg" {
  type = map(object({
    name = string
    number = string
  }))
}

variable "tags" {
  type = map(string)
}

variable "application" {
  type = string
}

variable "location" {
  type = string
  default = "brazilsouth"

  validation {
    condition = contains([
        "brazilsouth",
        "eastus"
        ], var.location)

    error_message = "Only brazilsouth and eastus locations are allowed"
  }
}

variable "environment" {
  type = string

  validation {
    condition = contains([
        "prd",
        "dev",
        "hml",
        "qas",
        "tst",
        "trn",
        "lab",
        "nprd",
        "shd",
        "sbx",
        "poc",
        "dvt"
        ], var.environment)

    error_message = "Only environments are allowed"
  }
}
