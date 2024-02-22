variable "greetings" {
  type        = string
  default     = "hello wooorrrlllddd this is a variable!!!"
  description = "The default greetings message"
}

variable "password" {
  type        = string
  description = "My secret password don't hack me pls"
}

variable "enable_aws" {
  type       = bool
  description = "enable aws resources"
}
