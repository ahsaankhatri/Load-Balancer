resource "aws_lb" "alb" {
  name = var.alb-Name
  internal = false
  ip_address_type = var.ip_address_type
  load_balancer_type = var.load_balancer_type
  security_groups = [aws_security_group.security_group.id]
  subnets = [aws_subnet.subnet.id]
}