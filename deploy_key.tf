resource "tls_private_key" "deploy_tls" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "deploy_key" {
  key_name   = "deployer-key"
  public_key = "${tls_private_key.deploy_tls.public_key_openssh}"
}