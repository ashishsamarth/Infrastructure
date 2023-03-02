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

resource "aws_s3_bucket" "my-terraform-bucket-with-variabalized-names" {
    # Define the number of buckets to be created
    count = 3
    # Following takes care of the renaming, using the variabalized parameter
    # ${count.index + 1} will enable the buckets to have a suffix of 1,2,3 instead of 0,1,2
    bucket = "samarth-my-terraform-bucket-${count.index + 1}"
    acl = "private"

    # Enable Bucket Versioning
    versioning {
        enabled = true
        }

    tags = {
        Name = "created-by-terraform"
    }
}