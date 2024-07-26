output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnets_ids" {
  value = length(aws_subnet.public_subnets) > 0 ? {
    for net in aws_subnet.public_subnets : net.availability_zone => net.id
  } : null
}

output "public_subnet_id_us_east_1a" {
  description = "ID de la subred publica en us-east-1a"
  value       = length(aws_subnet.public_subnets) > 0 ? lookup({ for net in aws_subnet.public_subnets : net.availability_zone => net.id }, "us-east-1a") : null
}

output "private_subnets_ids" {
  value = length(aws_subnet.private_subnets) > 0 ? {
    for net in aws_subnet.private_subnets : net.availability_zone => net.id
  } : null
}

output "private_subnet_ids" {
  value = [for subnet in aws_subnet.private_subnets : subnet.id]
}

output "private_subnet_id_us_east_1a" {
  description = "ID de la subred privada en us-east-1a"
  value       = length(aws_subnet.private_subnets) > 0 ? lookup({ for net in aws_subnet.private_subnets : net.availability_zone => net.id }, "us-east-1a") : null
}