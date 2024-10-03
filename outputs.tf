output "kubernetes_cluster_name" {
  value       = module.gke.name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value       = module.gke.endpoint
  description = "GKE Cluster Host"
}

output "wordpress_ip" {
  value       = kubernetes_service.wordpress.status.0.load_balancer.0.ingress.0.ip
  description = "WordPress LoadBalancer IP"
}

output "phpmyadmin_ip" {
  value       = kubernetes_service.phpmyadmin.status.0.load_balancer.0.ingress.0.ip
  description = "phpMyAdmin LoadBalancer IP"
}

output "argocd_server_url" {
  value       = try("https://${data.kubernetes_service.argocd.status[0].load_balancer[0].ingress[0].ip}", "ArgoCD URL not available yet")
  description = "URL для доступу до сервера ArgoCD"
}

output "argocd_ip" {
  value       = try(data.kubernetes_service.argocd.status[0].load_balancer[0].ingress[0].ip, "ArgoCD IP not available yet")
  description = "IP-адреса для доступу до ArgoCD"
}

output "grafana_ip" {
  value       = try(data.kubernetes_service.grafana.status[0].load_balancer[0].ingress[0].ip, "Grafana IP not available yet")
  description = "IP-адреса для доступу до Grafana"
}

output "mysql_instance_connection_name" {
  value       = google_sql_database_instance.mysql_instance.connection_name
  description = "MySQL instance connection name"
}

output "postgres_instance_connection_name" {
  value       = google_sql_database_instance.postgres_instance.connection_name
  description = "PostgreSQL instance connection name"
}