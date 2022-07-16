resource "aws_secretsmanager_secret" "terra-new-secrets" {
  name                    = "terra-new-secrets"
  recovery_window_in_days = 0 # to delete secret while destroy 
}

# to store private key on secrets manager
resource "aws_secretsmanager_secret_version" "terra-secrets-key" {
  secret_id     = aws_secretsmanager_secret.terra-new-secrets.id
  secret_string = tls_private_key.rsa-key.private_key_pem
}
