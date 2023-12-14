resource "aws_ssm_parameter" "foo" {
  count= length(var.sample)
  name  = var.sample[count.index].name
  type  = var.sample[count.index].type
  value = var.sample[count.index].value
}

variable "sample" {
  default={
    { name = "roboshop.dev.frontend.catalogue_url", type = "String", value = "http://catalogue-dev.rkdevops.store:8080/" },
    { name = "roboshop.dev.frontend.user_url", type = "String", value = "http://user-dev.rkdevops.store:8080/" },
    { name = "roboshop.dev.frontend.cart_url", type = "String", value = "http://cart-dev.rkdevops.store:8080/" },
    { name = "roboshop.dev.frontend.payment_url", type = "String", value = "http://payment-dev.rkdevops.store:8080/" },
    { name = "roboshop.dev.frontend.shipping_url", type = "String", value = "http://shipping-dev.rkdevops.store:8080/" },
  }
}