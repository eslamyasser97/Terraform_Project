resource "aws_internet_gateway" "V_OIS" {
  vpc_id = aws_vpc.V_OIS.id

  tags = {
    Name = "V_OIS"
  }
}