############## create aws parameter in paremeter store terraform ##################
resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", type = "String", value = "https://catalogue-dev.rkdevops.store" },
    { name = "roboshop.dev.frontend.user_url", type = "String", value = "https://user-dev.rkdevops.store" },
    { name = "roboshop.dev.frontend.cart_url", type = "String", value = "https://cart-dev.rkdevops.store" },
    { name = "roboshop.dev.frontend.payment_url", type = "String", value = "https://payment-dev.rkdevops.store" },
    { name = "roboshop.dev.frontend.shipping_url", type = "String", value = "https://shipping-dev.rkdevops.store" }
  ]
}
