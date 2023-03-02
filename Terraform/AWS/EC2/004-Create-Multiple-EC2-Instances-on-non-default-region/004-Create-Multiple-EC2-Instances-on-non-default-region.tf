/*
The provider is not defined explicitly in this file, rather its being read from 'provider.tf' in the same directory
Variable names and some of the variable values are defined in 'variables.tf, while the access_key and secret_key are read from command line
When running 

terraform apply -auto-approve -var AWS_ACCESS_KEY=<> -var AWS_SECRET_KEY=<>
*/


/*  
Now for example you have to multiple Ec2 instances
Use, the following syntax
For EC2 - "my-ec2-instances" is the resource name for the EC2 instances in terraform
Actual name of the EC2 instance will be - my-ec2-instance-03022023-1; my-ec2-instance-03022023-2; my-ec2-instance-03022023-3 etc,
depending on how many machines are to be created

You will need the ami name : from AWS
*/

resource "aws_instance" "my-ec2-instances" {
    ami = lookup(var.AMI-Images, var.AWS_REGION)
    instance_type = "t2.micro"

    # Number of instances to be created is read from a variable in 'variables.tf' in the same directory
    count = "${var.instance_count}"

    tags = {
        Name = "my-ec2-instance-03022023-${count.index + 1}"
    }

    # Security Group NAMES are being read from 'variables.tf' in the same directory
    # Special Note: when using 'security_groups' parameter, the values should be Security Group Names, not security Group ID
    security_groups = "${var.attach_security_group}"
}
