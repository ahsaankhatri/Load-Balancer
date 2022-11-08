resource "aws_lb_target_group" "lb_target_group" {
health_check {
      interval = 10
      path = "/"
      protocol = "HTTP"
      timeout = 5
      healthy_threshold = 5
      unhealthy_threshold = 2
    }
  name     = var.lb_target_group-name
  port     = var.portno
  protocol = var.protocol
  target_type = var.alb-target_type
  vpc_id   = aws_vpc.vpc.id
}

resource "aws_lb_target_group_attachment" "target_group_attachment" {
  count = length(aws_instance.ec2-instances)
  target_group_arn = aws_lb_target_group.lb_target_group.arn
  target_id = aws_instance.ec2-instances[count.index].id
  
}