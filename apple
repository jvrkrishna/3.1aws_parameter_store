############## create aws parameter in paremeter store terraform ##################
resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", type = "String", value = "http://catalogue-dev.rkdevops.store:8080/" },
    { name = "roboshop.dev.frontend.user_url", type = "String", value = "http://user-dev.rkdevops.store:8080/" },
    { name = "roboshop.dev.frontend.cart_url", type = "String", value = "http://cart-dev.rkdevops.store:8080/" },
    { name = "roboshop.dev.frontend.payment_url", type = "String", value = "http://payment-dev.rkdevops.store:8080/" },
    { name = "roboshop.dev.frontend.shipping_url", type = "String", value = "http://shipping-dev.rkdevops.store:8080/" },
    { name = "roboshop.dev.cart.redis_host", type = "String", value = "redis-dev.rkdevops.store" },
    { name = "roboshop.dev.cart.catalogue_host", type = "String", value = "catalogue-dev.rkdevops.store" },
    { name = "roboshop.dev.cart.catalogue_port", type = "String", value = "8080" },
    { name = "roboshop.dev.catalogue.mongo", type = "String", value = "true" },
    { name = "roboshop.dev.catalogue.mongo_url", type = "String", value = "mongodb://mongodb-dev.rkdevops.store:27017/catalogue" },
    { name = "roboshop.dev.payment.cart_host", type = "String", value = "cart-dev.rkdevops.store" },
    { name = "roboshop.dev.payment.cart_port", type = "String", value = "8080" },
    { name = "roboshop.dev.payment.user_host", type = "String", value = "user-dev.rkdevops.store" },
    { name = "roboshop.dev.payment.user_port", type = "String", value = "8080" },
    { name = "roboshop.dev.payment.amqp_host", type = "String", value = "rabbitmq-dev.rkdevops.store" },
    { name = "roboshop.dev.payment.amqp_user", type = "String", value = "roboshop" },
    { name = "roboshop.dev.shipping.cart_endpoint", type = "String", value = "cart-dev.rkdevops.store:8080" },
    { name = "roboshop.dev.shipping.db_host", type = "String", value = "mysql-dev.rkdevops.store" },
    { name = "roboshop.dev.user.mongo", type = "String", value = "true" },
    { name = "roboshop.dev.user.redis_host", type = "String", value = "redis-dev.rkdevops.store" },
    { name = "roboshop.dev.user.mongo_url", type = "String", value = "mongodb://mongodb-dev.rkdevops.store:27017/users" },


    #######password never part of git repos, usually organisations we create them manually. Meaning who will have the access they provision these secrets in parameter store.
    { name = "roboshop.dev.payment.amqp_pass", type = "SecureString", value = "roboshop123" }
  ]
}

