module "ec2_basic" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = var.server_name

  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = data.aws_key_pair.basic_keypair.key_name
  monitoring             = var.monitoring
  vpc_security_group_ids = [module.basic_sg.security_group_id]
  subnet_id              = data.aws_subnet.bootcamp_private_sub_2a.id

  tags = local.tags
}
