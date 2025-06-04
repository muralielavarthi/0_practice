variable "instances" {
  default = ["front-end", "back-end", "database"] # list of instances required
}

variable "common_tags" {
  default = {
    project     = "expense"
    environment = "prod"
  }
}

variable "zone-id" {
  default = "Z0079731TJCAY82MDOKA"
}

variable "domain-name" {
  default = "emurali.shop"
}