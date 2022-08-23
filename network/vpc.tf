resource "aws_vpc" "V_OIS" {
  cidr_block = var.cidr
  tags = {
    Name = var.name
    Env = "dev"
    test = "test"
  }
}