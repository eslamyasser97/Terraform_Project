output "vpc_id" {
  value = aws_vpc.V_OIS.id
}

output "aws_subnet_private1" {
  value = aws_subnet.private1.id
}

output "aws_subnet_private2" {
  value = aws_subnet.private2.id
}