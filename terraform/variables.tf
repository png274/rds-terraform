// variable "vpc_id" {
//   description = "ID of the VPC where to deploy"
// }
// 
// variable "security_group" {
//   description = "Security groups that are allowed to access the RDS" 
//   type        = list(string)
// }

variable "allowed_cidr_blocks" {
  description = "CIDR blocks that are allowed to access the RDS" 
  type        = list(string)
  default     = []
}

variable "storage" {
  description = "How many GBs of space is your DB" 
  default     = 10
}

// variable "subnets" {
//  description = "Subnets to deploy in" 
//  type        = list(string)
// }

variable "max_allocated_storage" {
  description = "WHen configured, the upper limit to which Amazon RDs can automatically scale the storage of the DB instance. Configuring this will automatically ignore difereences to allocated_storage. Must be greater than or equal to allocated_storage or 0 to disable Storage Autoscaling." 
  type        = string
  default     = "0"
}

variable "instance_class" {
  description = "Instance class" 
  default     = "db.t3.small"
}

variable "username" {
  description = "RDS root username" 
  default     = "saldy"
}

variable "password" {
  description = "RDS root password" 
  sensitive   = true
}

variable "db_name" {
  description = "Database name" 
  default     = "saldyy"
}

variable "engine" {
  description = "Database engine" 
  default   = "postgres"
}

variable "engine_version" {
  description = "Database engine version" 
  default     = "14.2"
}

variable "multi_az" {
  description = "Enabled Multi AZ or not" 
  default     = false
}

variable "identifier" {
  description = "Identifier of RDS instance" 
  default     = "saldyy-db"
}

variable "skip_final_snapshot" {
  description = "Skip final snapshot or not" 
  default     = true
}

variable "environment" {
  description = "Deploy env: prod, dev or staging" 
  default     = "dev"
}

variable "project_name" {
  description = "project_name" 
  default     = "saldyy-rds-study"
}



