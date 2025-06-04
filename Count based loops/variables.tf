variable "instances" {
  default = ["front-end,back-end,database"]
}

variable "common_tags" {
  default = {
    project="expense"
    environment="prod"
  }
}