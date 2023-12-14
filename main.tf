resource "aws_ssm_parameter" "foo" {
  count=length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    { name:"Gopal", type:"String", value:"Gopal@123" },
    { name:"Seetha", type:"String", value:"Seetha@123" },
  ]
}