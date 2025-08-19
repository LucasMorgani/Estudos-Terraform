#Adicionando uma nova VPC
resource "aws_vpc" "eks_vpc" {
  #Dados dos resources
  cidr_block           = var.cidr_block # Puxa o valor informado em variables.tf
  enable_dns_support   = true
  enable_dns_hostnames = true
  #----

  #Declarando tags mescladas, entre reutilizaveis (locals.tf) e tags especificas locais
  tags = merge(
    local.tags, #Passando variaveis reutilizaveis salvas em locals.tf
    {
      Name = "comunidadedevops-vpc" #Passando a tag especifica local
    }
  )
  #----

}
#----