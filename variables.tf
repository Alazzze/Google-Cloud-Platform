# Variables
variable "project_id" {
  description = "The ID of the Google Cloud project"
  type        = string
  default     = "ID of the Google Cloud project"
}

variable "region" {
  description = "The region to deploy resources in"
  type        = string
  default     = "us-central1"
}

variable "zones" {
  description = "The zones where the resources will be created"
  type        = list(string)
  default     = ["us-central1-a", "us-central1-b", "us-central1-c"]
}

variable "argocd_admin_password" {
  description = "Admin password for ArgoCD"
  type        = string
  default     = "Admin password for ArgoCD"
}

variable "wordpress_db_password" {
  description = "Password for WordPress database"
  type        = string
  default     = "Password for WordPress database"
}

variable "postgres_db_password" {
  description = "Password for PostgreSQL database"
  type        = string
  default     = "Password for PostgreSQL database"
}

#variable "service_account_email" {
#  description = "The email of the service account to use"
#  type        = string
#  default     = "The email of the service account to use"
#}

variable "grafana_admin_password" {
  description = "Admin password for Grafana"
  type        = string
  default     = "Admin password for Grafana"  
}
variable "cluster_name" {
  description = "GKE ckuster name"
  type        = string
  default     = "gke-cluster"
}



  

