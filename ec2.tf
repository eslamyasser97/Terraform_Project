resource "aws_instance" "V_OIS1" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  subnet_id     = module.V_OIS.aws_subnet_private1
  tags = {
    Name = "V_OIS1"
  }
}

resource "aws_instance" "V_OIS2" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  subnet_id     = module.V_OIS.aws_subnet_private2
  tags = {
    Name = "V_OIS2"
  }
}

resource "aws_network_interface_sg_attachment" "V_OIS" {
  security_group_id    = aws_security_group.V_OIS.id
  network_interface_id = aws_instance.V_OIS1.primary_network_interface_id
}

