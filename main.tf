module "ALB" {
  source = "./ALB"
  cidr_block = var.cidr_block
  instance_type = var.instance_type
  portno = var.portno
  protocol = var.protocol
  lb_target_group-name = var.lb_target_group-name
  alb-target_type = var.alb-target_type
  ami = var.ami
  instance_count = var.instance_count
  alb-Name = var.alb-Name
  ip_address_type = var.ip_address_type
  load_balancer_type = var.load_balancer_type
}