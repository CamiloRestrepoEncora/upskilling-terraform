variable "db_password" {
  description = "Password for the database user"
  type        = string
  default     = "your_password"
}

variable "primary_az" {
  description = "Availability Zone for the primary RDS instance"
  type        = string
  default     = "us-east-1a"
}

variable "replica_az" {
  description = "Availability Zone for the read replica RDS instance"
  type        = string
  default     = "us-east-1b"
}

variable "namedb" {
  description = "Name for the RDS resources"
  type        = string
  default     = "replica-mysql"
}


variable "engine" {
  description = "Database engine"
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = "Database engine version"
  type        = string
  default     = "8.0"
}

variable "family" {
  description = "Database parameter group family"
  type        = string
  default     = "mysql8.0"
}

variable "major_engine_version" {
  description = "Database major engine version"
  type        = string
  default     = "8.0"
}

variable "instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t4g.large"
}

variable "allocated_storage" {
  description = "Allocated storage for the RDS instance"
  type        = number
  default     = 20
}

variable "max_allocated_storage" {
  description = "Maximum allocated storage for the RDS instance"
  type        = number
  default     = 100
}

variable "port" {
  description = "Port for the RDS instance"
  type        = number
  default     = 3306
}