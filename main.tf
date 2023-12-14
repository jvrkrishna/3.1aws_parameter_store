resource "aws_ssm_parameter" "foo" {
  count=length(var.params)
  name  = var.params[var.params].name
  type  = var.params[var.params].type
  value = var.params[var.params].value
}

variable "params" {
  default = [
    { name:"Gopal", type:"String", value:"Gopal@123" },
    { name:"Seetha", type:"String", value:"Seetha@123" },
  ]
}