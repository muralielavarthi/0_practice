variable "instances" {
  default = ["front-end","back-end","database"] # list of instances required
}

variable "common_tags" {
  default = {
    project="expense"
    environment="prod"
  }
}