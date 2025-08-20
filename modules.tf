#Definindo modulos do projeto
#eks_network
module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags #As tags estão sendo pegas do locals.tf e sendo jogadas para './modules/network/variables.tf' como uma variavel
}
#eks_cluster
module "eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  tags             = local.tags                          #As tags estão sendo pegas do locals.tf e sendo jogadas para './modules/network/variables.tf' como uma variavel
  public_subnet_1a = module.eks_network.subnet_public_1a #A saida de 'module.eks_network.subnet_public_1a' da o valor para a variavel no modulo do cluster
  public_subnet_1b = module.eks_network.subnet_public_1b #A saida de 'module.eks_network.subnet_public_1b' da o valor para a variavel no modulo do cluster
}
#----