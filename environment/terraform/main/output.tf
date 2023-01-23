output "linux_ips" {
  value = aws_instance.linux_vm[*].public_ip
}



output "ubuntu_ips" {
  value = aws_instance.ubuntu_vm[*].public_ip
}
