# Provider can be defined in two ways

# The following method works, when you read the 'access-key', 'secret-key' and 'default-region' from the user(s) .aws/credentials and .aws/config file
# if you have multiple profiles in "aws configure, then the format will be slightly different"

provider "aws" {}

# Another method is to define the access_key, secret_key and region with in the provider section, but this is not a recommended method
/*
provider "aws" {
    region = "your-region-here"
    access_key = "your-access-key-here"
    secret_key = "your-secret-key-here"
}

*/

/*  
Now for example you have to create a resource - for e.g. EC2 Instance
Use, the following syntax

For EC2 - "my-ec2-instance" is the resource name for the EC2 Instance in terraform
Actual name of the EC2 instance will be - my-ec2-instance-03022023
You will need the ami name : from AWS

*/

resource "aws_instance" "my-ec2-instance" {
    ami = "ami-006dcf34c09e50022"
    instance_type = "t2.micro"

    tags = {
        Name = "my-ec2-instance-03022023"
    }
}