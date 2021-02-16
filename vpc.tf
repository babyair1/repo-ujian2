resource "aws_vpc" "ujian-vpc" {
  cidr_block       = "21.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "ujian-vpc"
  }
}