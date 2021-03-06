module "basic_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = var.security_group_name
  description = "Security group for Jenkins Server"
  vpc_id      = data.aws_vpc.selected.id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp", "ssh-tcp", "http-8080-tcp"]
  egress_rules        = ["all-all"]
}