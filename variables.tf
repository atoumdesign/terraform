variable "resource" {
  type = map(object({
    name = string
    number = string
  }))
}

variable "generals" {
  type = map(object({
    application = string
    location = string
  }))
}

variable "tags" {
  type = map(string)
}
