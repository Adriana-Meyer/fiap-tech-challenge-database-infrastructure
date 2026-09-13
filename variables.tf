variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "project_name" {
  type    = string
  default = "tech-challenge"
}

variable "eks_cluster_name" {
  description = "Fixed name of the EKS cluster provisioned by Repo 2 — used to discover its VPC, private subnets and cluster security group without manual copy-paste between repos."
  type        = string
  default     = "tech-challenge-eks"
}

variable "db_name" {
  description = "Same database name already used by the app (application-docker.yml / k8s configmap) to minimize changes when Repo 4 points to this RDS instance."
  type        = string
  default     = "workshop_db"
}

variable "db_username" {
  type    = string
  default = "workshop"
}

variable "db_instance_class" {
  description = "Must be nano/micro/small/medium — the only DB instance classes allowed on AWS Academy Learner Lab."
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "GB. Only gp2 storage is supported by the Lab, capped at 100GB."
  type        = number
  default     = 20
}

variable "db_engine_version" {
  type    = string
  default = "8.0"
}
