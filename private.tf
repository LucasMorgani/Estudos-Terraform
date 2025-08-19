#Criando subnet privada - us-east-1a
resource "aws_subnet" "eks_subnet_priv_1a" {
  #Dados da subnet
  vpc_id            = aws_vpc.eks_vpc.id                   #Pegando o id da vpc como atributo
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)     #Gerando o CIDR 10.0.3.0/24
  availability_zone = "${data.aws_region.current.region}a" #Pegando a região atual com o data source (region.tf)
  #----
  #Declarando tags mescladas, entre reutilizaveis (locals.tf) e tags especificas locais
  tags = merge(
    local.tags,
    {
      Name                              = "${var.project_name}-priv-subnet-1a"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
  #----
}
#----

#Criando subnet privada - us-east-1b
resource "aws_subnet" "eks_subnet_priv_1b" {
  #Dados da subnet
  vpc_id            = aws_vpc.eks_vpc.id                   #Pegando o id da vpc como atributo
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)     #Gerando o CIDR 10.0.4.0/24
  availability_zone = "${data.aws_region.current.region}b" #Pegando a região atual com o data source (region.tf)
  #----
  #Declarando tags mescladas, entre reutilizaveis (locals.tf) e tags especificas locais
  tags = merge(
    local.tags,
    {
      Name                              = "${var.project_name}-priv-subnet-1b"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
  #----
}
#----