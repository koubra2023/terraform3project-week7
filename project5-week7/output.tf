#splunk-sg id
output "splunk-sg" {
value = aws_security_group.splunk-sg.id
}

#vpc id
output "vpc_id" {
value = aws_vpc.splunk-vpc.id
}

#ec2 public ip
output "public-ip" {
    value = aws_instance.ec2-keypair.public_ip
  
}
