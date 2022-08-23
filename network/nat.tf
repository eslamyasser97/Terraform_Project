resource "aws_nat_gateway" "V_OIS" {
  allocation_id = aws_eip.V_OIS.id
  subnet_id     = aws_subnet.public1.id
  depends_on = [aws_eip.V_OIS]
}
