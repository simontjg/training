output "address" {
  value = "${join(", ", aws_instance.test-server.*.public_dns)}" 
}

output "public_ip" {
  value = "${join(", ", aws_instance.test-server.*.public_ip)}"
}

