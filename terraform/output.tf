output "db_connection_endpoint" {
  description = "The connection endpoint"
  value       = aws_db_instance.app_server.endpoint
}
