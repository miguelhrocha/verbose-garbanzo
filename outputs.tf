output "my_password" {
  value     = var.password
  sensitive = true
}

output "rum_bucket" {
  value    = var.enable_aws ? aws_s3_bucket.rum : null
}
