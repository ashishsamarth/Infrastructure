Terraform - AWS
----------------------------------------------------------------------------------------------------------------------------------------

For connecting to any provider (in this case AWS), we will need atleast three values

    1.  AWS access key
    2.  AWS Secret key
    3.  AWS region

----------------------------------------------------------------------------------------------------------------------------------------
AWS Access Key & AWS Secret Key

    Can be set by following methods

        1.  By running aws configure, and the access key gets written to users '.aws'/credentials file
        2.  By explicitly defining the environment variables

----------------------------------------------------------------------------------------------------------------------------------------

    For Linux

    export AWS_ACCESS_KEY_ID="Your_AWS_Access_key"
    export AWS_SECRET_ACCESS_KEY="Your_AWS_Secret_key"

----------------------------------------------------------------------------------------------------------------------------------------

    For Windows CMD

    setx AWS_ACCESS_KEY_ID Your_AWS_Access_key
    setx AWS_SECRET_ACCESS_KEY Your_AWS_Secret_key

----------------------------------------------------------------------------------------------------------------------------------------

    For PowerShell

    $Env:AWS_ACCESS_KEY_ID="Your_AWS_Access_key"
    $Env:AWS_SECRET_ACCESS_KEY="Your_AWS_Secret_key"

----------------------------------------------------------------------------------------------------------------------------------------
AWS Default region

    Can be set by following methods

        1.  By running aws configure, and the access key gets written to users '.aws'/config file
        2.  By explicitly defining the environment variables

----------------------------------------------------------------------------------------------------------------------------------------

    For Linux

    export AWS_DEFAULT_REGION=us-east-2

----------------------------------------------------------------------------------------------------------------------------------------

    For Windows CMD

    setx AWS_DEFAULT_REGION us-east-2

----------------------------------------------------------------------------------------------------------------------------------------

    For PowerShell

    $Env:AWS_DEFAULT_REGION="us-east-1"

----------------------------------------------------------------------------------------------------------------------------------------

Once the terraform configuration file "002-create-s3-bucket-with-versioning" is created successfully.

    To Run terraform configuration for the first time for this configuration file
        1.  Navigate to the current directory (using terminal) where this configuration file is present
        2.  Execute the following command.
            terraform init

----------------------------------------------------------------------------------------------------------------------------------------
Output of terraform init
----------------------------------------------------------------------------------------------------------------------------------------
	PS C:\Users\samarth\_code_repo\Infrastructure\Terraform\AWS\002-Create-S3-Bucket-with-versioning> terraform init

	Initializing the backend...

	Initializing provider plugins...
	- Finding latest version of hashicorp/aws...
	- Installing hashicorp/aws v4.56.0...
	- Installed hashicorp/aws v4.56.0 (signed by HashiCorp)

	Terraform has created a lock file .terraform.lock.hcl to record the provider   
	selections it made above. Include this file in your version control repository 
	so that Terraform can guarantee to make the same selections by default when    
	you run "terraform init" in the future.

	Terraform has been successfully initialized!

	You may now begin working with Terraform. Try running "terraform plan" to see  
	any changes that are required for your infrastructure. All Terraform commands  
	should now work.

	If you ever set or change modules or backend configuration for Terraform,      
	rerun this command to reinitialize your working directory. If you forget, other
	commands will detect it and remind you to do so if necessary.
	PS C:\Users\samarth\_code_repo\Infrastructure\Terraform\AWS\002-Create-S3-Bucket-with-versioning>

----------------------------------------------------------------------------------------------------------------------------------------
Terraform will perform the following

    1.  create a hidden directory '.terraform' with in the current folder and download the content for the provider, in this case AWS
    2.  creates another file '.terraform.lock.hcl'

----------------------------------------------------------------------------------------------------------------------------------------
Your terraform file : "002-create-s3-bucket-with-versioning.tf" is created and your template is ready to be applied

    Following is the list of directories & files in your current directory
    1.  .terraform
    2.  .terraform.lock.hcl
    3.  002-create-s3-bucket-with-versioning.tf

----------------------------------------------------------------------------------------------------------------------------------------
To see and understand what all resources will be created in AWS by terraform, execute

terraform plan

----------------------------------------------------------------------------------------------------------------------------------------
Following is the output

	PS C:\Users\samarth\_code_repo\Infrastructure\Terraform\AWS\002-Create-S3-Bucket-with-versioning> terraform plan

	Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
	  + create

	Terraform will perform the following actions:

	  # aws_s3_bucket.my-terraform-bucket-with-versioning will be created
	  + resource "aws_s3_bucket" "my-terraform-bucket-with-versioning" {
		  + acceleration_status         = (known after apply)
		  + acl                         = "private"
		  + arn                         = (known after apply)
		  + bucket                      = "samarth-terraform-bucket-with-versioning"
		  + bucket_domain_name          = (known after apply)
		  + bucket_regional_domain_name = (known after apply)
		  + force_destroy               = false
		  + hosted_zone_id              = (known after apply)
		  + id                          = (known after apply)
		  + object_lock_enabled         = (known after apply)
		  + policy                      = (known after apply)
		  + region                      = (known after apply)
		  + request_payer               = (known after apply)
		  + tags                        = {
			  + "Name" = "Created-By-Terraform"
			}
		  + tags_all                    = {
			  + "Name" = "Created-By-Terraform"
			}
		  + website_domain              = (known after apply)
		  + website_endpoint            = (known after apply)

		  + cors_rule {
			  + allowed_headers = (known after apply)
			  + allowed_methods = (known after apply)
			  + allowed_origins = (known after apply)
			  + expose_headers  = (known after apply)
			  + max_age_seconds = (known after apply)
			}

		  + grant {
			  + id          = (known after apply)
			  + permissions = (known after apply)
			  + type        = (known after apply)
			  + uri         = (known after apply)
			}

		  + lifecycle_rule {
			  + abort_incomplete_multipart_upload_days = (known after apply)
			  + enabled                                = (known after apply)
			  + id                                     = (known after apply)
			  + prefix                                 = (known after apply)
			  + tags                                   = (known after apply)

			  + expiration {
				  + date                         = (known after apply)
				  + days                         = (known after apply)
				  + expired_object_delete_marker = (known after apply)
				}

			  + noncurrent_version_expiration {
				  + days = (known after apply)
				}

			  + noncurrent_version_transition {
				  + days          = (known after apply)
				  + storage_class = (known after apply)
				}

			  + transition {
				  + date          = (known after apply)
				  + days          = (known after apply)
				  + storage_class = (known after apply)
				}
			}

		  + logging {
			  + target_bucket = (known after apply)
			  + target_prefix = (known after apply)
			}

		  + object_lock_configuration {
			  + object_lock_enabled = (known after apply)

			  + rule {
				  + default_retention {
					  + days  = (known after apply)
					  + mode  = (known after apply)
					  + years = (known after apply)
					}
				}
			}

		  + replication_configuration {
			  + role = (known after apply)

			  + rules {
				  + delete_marker_replication_status = (known after apply)
				  + id                               = (known after apply)
				  + prefix                           = (known after apply)
				  + priority                         = (known after apply)
				  + status                           = (known after apply)

				  + destination {
					  + account_id         = (known after apply)
					  + bucket             = (known after apply)
					  + replica_kms_key_id = (known after apply)
					  + storage_class      = (known after apply)

					  + access_control_translation {
						  + owner = (known after apply)
						}

					  + metrics {
						  + minutes = (known after apply)
						  + status  = (known after apply)
						}

					  + replication_time {
						  + minutes = (known after apply)
						  + status  = (known after apply)
						}
					}

				  + filter {
					  + prefix = (known after apply)
					  + tags   = (known after apply)
					}

				  + source_selection_criteria {
					  + sse_kms_encrypted_objects {
						  + enabled = (known after apply)
						}
					}
				}
			}

		  + server_side_encryption_configuration {
			  + rule {
				  + bucket_key_enabled = (known after apply)

				  + apply_server_side_encryption_by_default {
					  + kms_master_key_id = (known after apply)
					  + sse_algorithm     = (known after apply)
					}
				}
			}

		  + versioning {
			  + enabled    = true
			  + mfa_delete = false
			}

		  + website {
			  + error_document           = (known after apply)
			  + index_document           = (known after apply)
			  + redirect_all_requests_to = (known after apply)
			  + routing_rules            = (known after apply)
			}
		}

	Plan: 1 to add, 0 to change, 0 to destroy.
	╷
	│ Warning: Argument is deprecated
	│
	│   with aws_s3_bucket.my-terraform-bucket-with-versioning,
	│   on 002-create-s3-bucket-with-versioning.tf line 29, in resource "aws_s3_bucket" "my-terraform-bucket-with-versioning":
	│   29: resource "aws_s3_bucket" "my-terraform-bucket-with-versioning" {
	│
	│ Use the aws_s3_bucket_versioning resource instead
	│
	│ (and 3 more similar warnings elsewhere)
	╵

	───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

	Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
	PS C:\Users\samarth\_code_repo\Infrastructure\Terraform\AWS\002-Create-S3-Bucket-with-versioning> 

----------------------------------------------------------------------------------------------------------------------------------------
To create the resources in AWS by terraform, execute

terraform apply -auto-approve

----------------------------------------------------------------------------------------------------------------------------------------

    This will apply the changes as mentioned in the terraform template and also create the following file
    "terraform.tfstate" in the same directory

----------------------------------------------------------------------------------------------------------------------------------------
Output of "terraform apply -auto-approve"
----------------------------------------------------------------------------------------------------------------------------------------

	PS C:\Users\samarth\_code_repo\Infrastructure\Terraform\AWS\002-Create-S3-Bucket-with-versioning> terraform apply -auto-approve

	Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
	  + create

	Terraform will perform the following actions:

	  # aws_s3_bucket.my-terraform-bucket-with-versioning will be created
	  + resource "aws_s3_bucket" "my-terraform-bucket-with-versioning" {
		  + acceleration_status         = (known after apply)
		  + acl                         = "private"
		  + arn                         = (known after apply)
		  + bucket                      = "samarth-terraform-bucket-with-versioning"
		  + bucket_domain_name          = (known after apply)
		  + bucket_regional_domain_name = (known after apply)
		  + force_destroy               = false
		  + hosted_zone_id              = (known after apply)
		  + id                          = (known after apply)
		  + object_lock_enabled         = (known after apply)
		  + policy                      = (known after apply)
		  + region                      = (known after apply)
		  + request_payer               = (known after apply)
		  + tags                        = {
			  + "Name" = "Created-By-Terraform"
			}
		  + tags_all                    = {
			  + "Name" = "Created-By-Terraform"
			}
		  + website_domain              = (known after apply)
		  + website_endpoint            = (known after apply)

		  + cors_rule {
			  + allowed_headers = (known after apply)
			  + allowed_methods = (known after apply)
			  + allowed_origins = (known after apply)
			  + expose_headers  = (known after apply)
			  + max_age_seconds = (known after apply)
			}

		  + grant {
			  + id          = (known after apply)
			  + permissions = (known after apply)
			  + type        = (known after apply)
			  + uri         = (known after apply)
			}

		  + lifecycle_rule {
			  + abort_incomplete_multipart_upload_days = (known after apply)
			  + enabled                                = (known after apply)
			  + id                                     = (known after apply)
			  + prefix                                 = (known after apply)
			  + tags                                   = (known after apply)

			  + expiration {
				  + date                         = (known after apply)
				  + days                         = (known after apply)
				  + expired_object_delete_marker = (known after apply)
				}

			  + noncurrent_version_expiration {
				  + days = (known after apply)
				}

			  + noncurrent_version_transition {
				  + days          = (known after apply)
				  + storage_class = (known after apply)
				}

			  + transition {
				  + date          = (known after apply)
				  + days          = (known after apply)
				  + storage_class = (known after apply)
				}
			}

		  + logging {
			  + target_bucket = (known after apply)
			  + target_prefix = (known after apply)
			}

		  + object_lock_configuration {
			  + object_lock_enabled = (known after apply)

			  + rule {
				  + default_retention {
					  + days  = (known after apply)
					  + mode  = (known after apply)
					  + years = (known after apply)
					}
				}
			}

		  + replication_configuration {
			  + role = (known after apply)

			  + rules {
				  + delete_marker_replication_status = (known after apply)
				  + id                               = (known after apply)
				  + prefix                           = (known after apply)
				  + priority                         = (known after apply)
				  + status                           = (known after apply)

				  + destination {
					  + account_id         = (known after apply)
					  + bucket             = (known after apply)
					  + replica_kms_key_id = (known after apply)
					  + storage_class      = (known after apply)

					  + access_control_translation {
						  + owner = (known after apply)
						}

					  + metrics {
						  + minutes = (known after apply)
						  + status  = (known after apply)
						}

					  + replication_time {
						  + minutes = (known after apply)
						  + status  = (known after apply)
						}
					}

				  + filter {
					  + prefix = (known after apply)
					  + tags   = (known after apply)
					}

				  + source_selection_criteria {
					  + sse_kms_encrypted_objects {
						  + enabled = (known after apply)
						}
					}
				}
			}

		  + server_side_encryption_configuration {
			  + rule {
				  + bucket_key_enabled = (known after apply)

				  + apply_server_side_encryption_by_default {
					  + kms_master_key_id = (known after apply)
					  + sse_algorithm     = (known after apply)
					}
				}
			}

		  + versioning {
			  + enabled    = true
			  + mfa_delete = false
			}

		  + website {
			  + error_document           = (known after apply)
			  + index_document           = (known after apply)
			  + redirect_all_requests_to = (known after apply)
			  + routing_rules            = (known after apply)
			}
		}

	Plan: 1 to add, 0 to change, 0 to destroy.
	aws_s3_bucket.my-terraform-bucket-with-versioning: Creating...
	aws_s3_bucket.my-terraform-bucket-with-versioning: Creation complete after 1s [id=samarth-terraform-bucket-with-versioning]
	╷
	│ Warning: Argument is deprecated
	│
	│   with aws_s3_bucket.my-terraform-bucket-with-versioning,
	│   on 002-create-s3-bucket-with-versioning.tf line 29, in resource "aws_s3_bucket" "my-terraform-bucket-with-versioning":
	│   29: resource "aws_s3_bucket" "my-terraform-bucket-with-versioning" {
	│
	│ Use the aws_s3_bucket_versioning resource instead
	│
	│ (and 5 more similar warnings elsewhere)
	╵

	Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
	PS C:\Users\samarth\_code_repo\Infrastructure\Terraform\AWS\002-Create-S3-Bucket-with-versioning>

----------------------------------------------------------------------------------------------------------------------------------------
Content of "terraform.tfstate"
----------------------------------------------------------------------------------------------------------------------------------------

	{
	  "version": 4,
	  "terraform_version": "1.3.9",
	  "serial": 1,
	  "lineage": "93f79177-3352-a545-ff6e-951985e61eab",
	  "outputs": {},
	  "resources": [
		{
		  "mode": "managed",
		  "type": "aws_s3_bucket",
		  "name": "my-terraform-bucket-with-versioning",
		  "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
		  "instances": [
			{
			  "schema_version": 0,
			  "attributes": {
				"acceleration_status": "",
				"acl": "private",
				"arn": "arn:aws:s3:::samarth-terraform-bucket-with-versioning",
				"bucket": "samarth-terraform-bucket-with-versioning",
				"bucket_domain_name": "samarth-terraform-bucket-with-versioning.s3.amazonaws.com",
				"bucket_prefix": null,
				"bucket_regional_domain_name": "samarth-terraform-bucket-with-versioning.s3.amazonaws.com",
				"cors_rule": [],
				"force_destroy": false,
				"grant": [
				  {
					"id": "3d01d42579d4eb210339084f4036001a91ccbd1bb4d1614ae80f67b4c2683a21",
					"permissions": [
					  "FULL_CONTROL"
					],
					"type": "CanonicalUser",
					"uri": ""
				  }
				],
				"hosted_zone_id": "Z3AQBSTGFYJSTF",
				"id": "samarth-terraform-bucket-with-versioning",
				"lifecycle_rule": [],
				"logging": [],
				"object_lock_configuration": [],
				"object_lock_enabled": false,
				"policy": "",
				"region": "us-east-1",
				"replication_configuration": [],
				"request_payer": "BucketOwner",
				"server_side_encryption_configuration": [
				  {
					"rule": [
					  {
						"apply_server_side_encryption_by_default": [
						  {
							"kms_master_key_id": "",
							"sse_algorithm": "AES256"
						  }
						],
						"bucket_key_enabled": false
					  }
					]
				  }
				],
				"tags": {
				  "Name": "Created-By-Terraform"
				},
				"tags_all": {
				  "Name": "Created-By-Terraform"
				},
				"timeouts": null,
				"versioning": [
				  {
					"enabled": true,
					"mfa_delete": false
				  }
				],
				"website": [],
				"website_domain": null,
				"website_endpoint": null
			  },
			  "sensitive_attributes": [],
			  "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjoxMjAwMDAwMDAwMDAwLCJkZWxldGUiOjM2MDAwMDAwMDAwMDAsInJlYWQiOjEyMDAwMDAwMDAwMDAsInVwZGF0ZSI6MTIwMDAwMDAwMDAwMH19"
			}
		  ]
		}
	  ],
	  "check_results": null
	}


----------------------------------------------------------------------------------------------------------------------------------------
Check if the S3 Bucket was created
----------------------------------------------------------------------------------------------------------------------------------------
	PS C:\Users\samarth\_code_repo\Infrastructure\Terraform\AWS\001-Connect-To-AWS-Create-S3-Bucket> aws s3 ls
	2023-02-12 18:59:47 samarth-ashish-aws-developer-021223
	2023-02-16 05:29:57 samarth-ashish-aws-developer-021623     
	2023-03-01 15:49:21 samarth-terraform-bucket
	2023-03-01 15:57:58 samarth-terraform-bucket-with-versioning
	PS C:\Users\samarth\_code_repo\Infrastructure\Terraform\AWS\001-Connect-To-AWS-Create-S3-Bucket> 

----------------------------------------------------------------------------------------------------------------------------------------