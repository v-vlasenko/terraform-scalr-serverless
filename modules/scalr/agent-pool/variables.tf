variable "agent_pool_name" {
  description = "Name of the agent pool"
  type        = string
  default     = "webhook-agent-pool"
}

variable "scalr_hostname" {
  type = string
  description = "host name of Scalr instance"
  default = "mainiacp.vlad-serveless.testenv.scalr.dev"
}

variable "scalr_token_sub" {
  type = string
  description = "Scalr token"
  default     = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2NfaWQiOiJhY2MtdjBvdGk0dWtmMmU4NzZkOXIiLCJleHAiOjE3NjE2NDk1MjMsImlzcyI6InNjYWxyOnVzZXIiLCJqdGkiOiJhdC12MG90aTcwMm05cmJrYjNrYiJ9.vc-UVAFt8s_-mjlPi-RHcS-wxN7TfBWuleGuRYysB5E"
}
