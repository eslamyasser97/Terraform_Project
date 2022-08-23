resource "aws_secretsmanager_secret" "V_OIS" {
  name = "private-ssh-ec2"
}

resource "aws_secretsmanager_secret_version" "V_OIS" {
  secret_id     = aws_secretsmanager_secret.V_OIS.id
  secret_string = "${tls_private_key.deploy_tls.private_key_openssh}"
}