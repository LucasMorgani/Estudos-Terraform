resource "aws_subnet" "eks_subnet_1a" {
  vpc_id                  = aws_vpc.eks_vpc.id #Pegando o id da vpc como atributo
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "comunidadedevops-subnet-1a"
  }
}

resource "aws_subnet" "eks_subnet_1b" {
  vpc_id                  = aws_vpc.eks_vpc.id #Pegando o id da vpc como atributo
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "comunidadedevops-subnet-1b"
  }
}