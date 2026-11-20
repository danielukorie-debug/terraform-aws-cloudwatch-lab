variable "ec2_instance_id" {
  description = "EC2 instance ID to monitor."
  type        = string

  validation {
    condition     = can(regex("^i-[0-9a-f]{8}([0-9a-f]{9})?$", var.ec2_instance_id))
    error_message = "Provide a valid EC2 instance ID."
  }
}
