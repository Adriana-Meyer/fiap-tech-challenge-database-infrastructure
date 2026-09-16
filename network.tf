# Discovers Repo 2's networking by the EKS cluster's well-known, fixed
# name — no manual copy-paste of VPC/subnet IDs between repos, and no
# cross-repo Terraform state coupling.
data "aws_eks_cluster" "main" {
  name = var.eks_cluster_name
}

data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = [data.aws_eks_cluster.main.vpc_config[0].vpc_id]
  }

  tags = {
    Tier = "private"
  }
}
