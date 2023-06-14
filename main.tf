############## create aws parameter in paremeter store terraform ##################
resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    { name = "demo1", type = "String", value = "demo1" },
    { name = "demo2", type = "String", value = "demo2" }
  ]
}

