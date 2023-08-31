variable "db_name" {
  description = "Unique name to assign to RDS instance"
}

variable "db_username" {
  description = "RDS root username"
  validation {
    condition = contains(["super", "user"], var.db_username)
    error_message = "Should contain either super, or user"
  }
}

variable "db_password" {
  description = "RDS root user password"
  sensitive   = true
}

variable "security_group_name" {
  description = "Name for the db security group"
}
