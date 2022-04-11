region = "eu-central-1"

labels = {
  prefix = "prefixName"
  stack  = "stackName"
  env    = "dev"
}

security_group = {
  ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Allow SSH access"
      cidr_blocks = ["192.168.0.0/24"]
    },
  ]
  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Allow All access"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}


vpc_config = {
  vpc_id = "vpc-123123123123"
}