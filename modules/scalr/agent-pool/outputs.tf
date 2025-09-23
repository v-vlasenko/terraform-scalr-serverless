output "agent_pool_id" {
  description = "The ID of the Scalr agent pool"
  value       = scalr_agent_pool.webhook.id
}

output "agent_token" {
  description = "The token for the Scalr agent"
  value       = scalr_agent_pool_token.webhook.token
  sensitive   = true
}

output "allowed_ips" {
  description = "List of allowed IPs from Scalr allowlist"
  value       = local.scalr_ips
}

output "api_gateway_url" {
  description = "API Gateway URL configured for serverless operation"
  value       = scalr_agent_pool.webhook.api_gateway_url
}

output "webhook_headers" {
  description = "Headers configured for webhook authentication"
  value       = scalr_agent_pool.webhook.header
  sensitive   = true
}
