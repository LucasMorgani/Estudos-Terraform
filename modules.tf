module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags #As tags estão sendo pegas do locals.tf e sendo jogadas para './modules/network/variables.tf' como uma variavel
}