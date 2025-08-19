#Criando subnet publica - us-east-1a
resource "aws_subnet" "eks_subnet_pub_1a" {
  #Dados da subnet
  vpc_id                  = aws_vpc.eks_vpc.id                   #Pegando o id da vpc como atributo
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)     #Gerando o CIDR 10.0.1.0/24
  availability_zone       = "${data.aws_region.current.region}a" #Pegando a região atual com o data source (region.tf)
  map_public_ip_on_launch = true
  #----
  #Declarando tags mescladas, entre reutilizaveis (locals.tf) e tags especificas locais
  tags = merge(
    local.tags,
    {
      Name                     = "${var.project_name}-pub-subnet-1a",
      "kubernetes.io/role/elb" = 1 #Passando a tag de subnet publica
    }
  )
  #----
}
#----

#Criando uma subnet - us-east-1b
resource "aws_subnet" "eks_subnet_pub_1b" {
  #Dados da subnet
  vpc_id                  = aws_vpc.eks_vpc.id                   #Pegando o id da vpc como atributo
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)     #Gerando o CIDR 10.0.2.0/24
  availability_zone       = "${data.aws_region.current.region}b" #Pegando a região atual com o data source (region.tf)
  map_public_ip_on_launch = true
  #----
  #Declarando tags mescladas, entre reutilizaveis (locals.tf) e tags especificas locais
  tags = merge(
    local.tags,
    {
      Name                     = "${var.project_name}-pub-subnet-1b",
      "kubernetes.io/role/elb" = 1 #Passando a tag de subnet publica
    }
  )
  #----
}
#----