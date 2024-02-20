output "MyPublicIP" {
  value = aws_instance.example[*].public_ip
}
