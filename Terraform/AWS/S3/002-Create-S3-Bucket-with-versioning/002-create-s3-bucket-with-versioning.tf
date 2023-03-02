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
Now for example you have to create a resource - for e.g. S3 bucket
Use, the following syntax

For S3 - "my-terraform-bucket-with-versioning" is the resource name for the S3 bucket in terraform
Actual name of the bucket will be - samarth-terraform-bucket-with-versioning

Note: This is a versioned and private bucket

*/

resource "aws_s3_bucket" "my-terraform-bucket-with-versioning" {
    bucket = "samarth-terraform-bucket-with-versioning"
    acl = "private"

    # Enable Bucket Versioning
    versioning {
        enabled = true
        }

    tags = {
        Name: "Created-By-Terraform"
    }
}