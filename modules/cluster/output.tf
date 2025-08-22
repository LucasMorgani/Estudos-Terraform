#Criando os outputs que sairão para fora do modulo
#Cluster name
output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.id
}
#----