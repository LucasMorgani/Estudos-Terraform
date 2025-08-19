resource "aws_vpc" "eks_vpc" {
  cidr_block           = var.cidr_block # Puxa o valor informado em variables.tf
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "comunidadedevops-vpc"
  }
}