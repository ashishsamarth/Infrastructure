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