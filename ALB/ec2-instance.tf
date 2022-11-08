resource "aws_instance" "ec2-instances" {
  ami = var.ami
  instance_type = var.instance_type
  count = var.instance_count

  tags = {
    name = "instance - ${count.index}"
  }
}