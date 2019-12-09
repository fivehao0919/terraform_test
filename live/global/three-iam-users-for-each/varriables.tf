variable "names" {
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
  description = "Create IAM users with these names"
}


variable "give_neo_cloudwatch_full_access" {
  type        = bool
  description = "If true, neo gets full access to CloudWatch"
}
