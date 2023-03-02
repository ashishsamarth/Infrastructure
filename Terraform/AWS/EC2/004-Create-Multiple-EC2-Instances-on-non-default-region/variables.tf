# Variables are defined in this file

# Following variables are empty and should be provided to terraform plan or terraform apply at run-time
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
# Following variable has a default value, in case the user does not provide am AWS_REGION
variable "AWS_REGION" {
    default = "us-east-1"
}

# Following is the list of Security Group Names to be attached to the EC2 instances while they are spin up
# NOTE: These are security group names, not security group id
variable "attach_security_group" {
    type = list
    default = ["launch-wizard-1", "Public-Access-HTTP-80-Inbound-EC2"]
}

# Following is the number of instances to be created using terraform, and this value is passed as a variable
variable "instance_count" { default=5 }

# Following is a map for the AMI-IDs based on what region is provided as a command line argument to
# terraform plan or terraform apply

variable "AMI-Images"{
    type = map
    default = {
        "us-east-1" = "ami-006dcf34c09e50022"
        "us-east-2" = "ami-097261bd06e355492"
        "us-west-1" = "ami-04a119c5b7ed4e7ad"
        "us-west-2" = "ami-07b8a117da8f2c473"
    }
}