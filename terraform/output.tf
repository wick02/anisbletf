output "ubuntu_public_ips" {
  value = [for instance in aws_instance.ubuntu : instance.public_ip]
}

output "prometheus_public_ip" {
  value = aws_instance.prometheus.public_ip
}