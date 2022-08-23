resource "aws_security_group" "V_OIS" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic "
  vpc_id      = module.V_OIS.vpc_id

}

resource "aws_security_group_rule" "inbound" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.V_OIS.id
}


resource "aws_security_group_rule" "outbound" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.V_OIS.id
}
