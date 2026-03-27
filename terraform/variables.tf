variable "vercel_api_token" {
  description = "Vercel API Token"
  type        = string
  sensitive   = true
}

variable "mongo_uri" {
  description = "MongoDB Connection URI"
  type        = string
  sensitive   = true
}

variable "mongo_username" {
  description = "MongoDB Username"
  type        = string
  sensitive   = true
}

variable "mongo_password" {
  description = "MongoDB Password"
  type        = string
  sensitive   = true
}
