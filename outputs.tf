output "ssm_parameters_id" {
  description = "Map of id values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssm_parameters_allowed_pattern" {
  description = "Map of allowed_pattern values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.allowed_pattern if v.allowed_pattern != null && length(v.allowed_pattern) > 0 }
}
output "ssm_parameters_arn" {
  description = "Map of arn values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ssm_parameters_data_type" {
  description = "Map of data_type values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.data_type if v.data_type != null && length(v.data_type) > 0 }
}
output "ssm_parameters_description" {
  description = "Map of description values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ssm_parameters_has_value_wo" {
  description = "Map of has_value_wo values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.has_value_wo if v.has_value_wo != null }
}
output "ssm_parameters_insecure_value" {
  description = "Map of insecure_value values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.insecure_value if v.insecure_value != null && length(v.insecure_value) > 0 }
}
output "ssm_parameters_key_id" {
  description = "Map of key_id values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "ssm_parameters_name" {
  description = "Map of name values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ssm_parameters_overwrite" {
  description = "Map of overwrite values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.overwrite if v.overwrite != null }
}
output "ssm_parameters_region" {
  description = "Map of region values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ssm_parameters_tags" {
  description = "Map of tags values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ssm_parameters_tags_all" {
  description = "Map of tags_all values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "ssm_parameters_tier" {
  description = "Map of tier values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.tier if v.tier != null && length(v.tier) > 0 }
}
output "ssm_parameters_type" {
  description = "Map of type values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.type if v.type != null && length(v.type) > 0 }
}
output "ssm_parameters_value" {
  description = "Map of value values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.value if v.value != null && length(v.value) > 0 }
  sensitive   = true
}
output "ssm_parameters_value_wo" {
  description = "Map of value_wo values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.value_wo if v.value_wo != null && length(v.value_wo) > 0 }
  sensitive   = true
}
output "ssm_parameters_value_wo_version" {
  description = "Map of value_wo_version values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.value_wo_version if v.value_wo_version != null }
}
output "ssm_parameters_version" {
  description = "Map of version values across all ssm_parameters, keyed the same as var.ssm_parameters"
  value       = { for k, v in aws_ssm_parameter.ssm_parameters : k => v.version if v.version != null }
}

