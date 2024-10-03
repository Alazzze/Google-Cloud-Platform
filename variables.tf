# Variables
variable "project_id" {
  description = "The ID of the Google Cloud project"
  type        = string
  default     = "artful-bonito-436711-i7"
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
  default     = "danceteam747"
}

variable "wordpress_db_password" {
  description = "Password for WordPress database"
  type        = string
  default     = "danceteam747"
}

variable "postgres_db_password" {
  description = "Password for PostgreSQL database"
  type        = string
  default     = "danceteam747"
}

#variable "service_account_email" {
#  description = "The email of the service account to use"
#  type        = string
#  default     = "Alazze91@gmail.com"
#}

variable "grafana_admin_password" {
  description = "Admin password for Grafana"
  type        = string
  default     = "danceteam747"  
}
variable "cluster_name" {
  description = "Назва GKE кластера"
  type        = string
  default     = "gke-cluster"
}



  

