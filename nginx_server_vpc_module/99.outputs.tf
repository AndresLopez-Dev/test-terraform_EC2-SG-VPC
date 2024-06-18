output "vpc_id" {
  value = aws_vpc.test_vpc.id
}

output "public_subnets_ids" {
  value = length(aws_subnet.public_subnets) > 0 ? { 
    for net in aws_subnet.public_subnets: net.availability_zone => net.id
  }: null
}

output "public_subnet_id_us_east_1a" {
  description = "ID de la subred pública en us-east-1a"
  value = length(aws_subnet.public_subnets) > 0 ? lookup({ for net in aws_subnet.public_subnets: net.availability_zone => net.id }, "us-east-1a") : null
}
