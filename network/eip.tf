resource "aws_eip" "V_OIS" {
  tags = {
    Name = "eip_nat"
  }
}