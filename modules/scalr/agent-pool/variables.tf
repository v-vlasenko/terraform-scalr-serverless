variable "agent_pool_name" {
  description = "Name of the agent pool"
  type        = string
  default     = "webhook-agent-pool"
}

variable "scalr_hostname" {
  type = string
  description = "host name of Scalr instance"
  default = "vlad-gh.vlad-serverless.testenv.scalr.dev"
}

variable "scalr_token_sub" {
  type = string
  description = "Scalr token"
}
