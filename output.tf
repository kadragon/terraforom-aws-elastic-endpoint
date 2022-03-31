output "elastic_endpoint_id" {
  description = "elastic privatelink endpoint id"
  value       = aws_vpc_endpoint.elastic_endpoint.id
}

output "elastic_endpoint_url" {
  description = "elastic privatelink endpoint id"
  value       = "https://${var.elasticsearch_cluster_ID}.${var.phsd_service}:9243"
}
