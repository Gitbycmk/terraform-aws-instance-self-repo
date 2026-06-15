output "public_ip" {
  value = aws_instance.this.public_ip
  description = "Public IP of the Instance"
}

output "private_ip" {
  value = aws_instance.this.private_ip
  description = "Private IP of the Instance"
}

output "instance_id" {
  value = aws_instance.this.id
}