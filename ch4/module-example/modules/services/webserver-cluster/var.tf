variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080  
}

variable "cluster_name" {
  type        = string
  description = "The name to use for all the cluster resources"
}

variable "db_remote_state_bucket" {
  type        = string
  description = "The name of the S3 bucket for the database's remote state"
}

variable "db_remote_state_key" {
  type        = string
  description = "The path for the database's remote state in S3"
}

variable "instance_type" {
  type        = string
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
}

variable "min_size" {
  type        = number
  description = "The minimum number of EC2 Instances in the ASG"
}

variable "max_size" {
  type        = string
  description = "The maximum number of EC2 Instances in the ASG"
}