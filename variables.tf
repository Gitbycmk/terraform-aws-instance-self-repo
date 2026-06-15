variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "This is the AMI Used to Create an EC2 Instance"
}

variable "instance_type" {
  type = string
  description = "Instance Type Used in EC2 Creation"
   validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "Please select either t3.micro or t3.small or t3.medium"
  }
}

variable "sg_ids" {
  type = list
}

# OPTIONAL
variable "tags" {
  type = map 
  default = {}
}