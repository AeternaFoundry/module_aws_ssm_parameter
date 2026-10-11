variable "ssm_parameters" {
  description = <<EOT
Map of ssm_parameters, attributes below
Required:
    - name
    - type
Optional:
    - allowed_pattern
    - arn
    - data_type
    - description
    - insecure_value
    - key_id
    - overwrite
    - region
    - tags
    - tags_all
    - tier
    - value
    - value_wo
    - value_wo_version
EOT

  type = map(object({
    name             = string
    type             = string
    allowed_pattern  = optional(string)
    arn              = optional(string)
    data_type        = optional(string)
    description      = optional(string)
    insecure_value   = optional(string)
    key_id           = optional(string)
    overwrite        = optional(bool)
    region           = optional(string)
    tags             = optional(map(string))
    tags_all         = optional(map(string))
    tier             = optional(string)
    value            = optional(string)
    value_wo         = optional(string)
    value_wo_version = optional(number)
  }))
  validation {
    condition = alltrue([
      for k, v in var.ssm_parameters : (
        v.allowed_pattern == null || (length(v.allowed_pattern) >= 0 && length(v.allowed_pattern) <= 1024)
      )
    ])
    error_message = "must be between 0 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssm_parameters : (
        v.data_type == null || (contains(["aws:ec2:image", "aws:ssm:integration", "text"], v.data_type))
      )
    ])
    error_message = "must be one of: aws:ec2:image, aws:ssm:integration, text"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

