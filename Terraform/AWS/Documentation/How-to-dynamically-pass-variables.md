How to dynamically pass variables to Terraform
----------------------------------------------------------------------------------------------------------------------------------------

Method#1:
----------------------------------------------------------------------------------------------------------------------------------------
Consider the following files and their content:

createec2instance.tf

    resource "aws_instance" "my-ec2-instance-via-variable" {
        ami = "ami-006dcf34c09e50022"
        instance_type = "t2.micro"
    }

    tags = {
        Name = "My-first-ec2-instance"
    }

----------------------------------------------------------------------------------------------------------------------------------------
provider.tf

    provider "aws" {
        access_key = "${var.AWS_ACCESS_KEY}"
        secret_key = "${var.AWS_SECRET_KEY}"
        region = "${var.AWS_REGION}"
    }

----------------------------------------------------------------------------------------------------------------------------------------
Variables.tf

    variable "AWS_ACCESS_KEY" {}
    variable "AWS_SECRET_KEY" {}
    variable "AWS_REGION" {
        default = "es-east-2"
    }

----------------------------------------------------------------------------------------------------------------------------------------

Note: None of the above mentioned files have the AWS credentials as of now

Now, if you run 'terraform plan' from the parent directory, where these file are kept, terraform will ask for the value of the variables

    PS C:\Users\samarth\_code_repo\Infrastructure\Terraform\AWS\EC2\terraform plan
    var.AWS_ACCESS_KEY
        Enter a value:
    
    var.AWS_SECRET_KEY
        Enter a value:

----------------------------------------------------------------------------------------------------------------------------------------
Another way of passing the variable value to terraform is via command line itself, here's how it looks

    terraform plan -var AWS_ACCESS_KEY="your-access-key-here" -var AWS_SECRET_KEY="your-secret-key-here"

Method#2:
----------------------------------------------------------------------------------------------------------------------------------------
Along with the above mentioned files, you can create another file called 'terrformvariables.tfvars" and manage your credentials there
But ensure to keep this file under .gitignore, so that its skipped while you check in the code

terrformvariables.tfvars

    AWS_ACCESS_KEY="your-access-key"
    AWS_SECRET_KEY="your-secret-key"

----------------------------------------------------------------------------------------------------------------------------------------