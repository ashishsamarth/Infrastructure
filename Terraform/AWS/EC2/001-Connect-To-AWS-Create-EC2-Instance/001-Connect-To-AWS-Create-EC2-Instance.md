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

Once the terraform configuration file "001-Connect-To-AWS-Create-EC2-Instance.tf" is created successfully.

    To Run terraform configuration for the first time for this configuration file
        1.  Navigate to the current directory (using terminal) where this configuration file is present
        2.  Execute the following command.
            terraform init

----------------------------------------------------------------------------------------------------------------------------------------
To create the resources in AWS by terraform, execute

terraform apply -auto-approve

----------------------------------------------------------------------------------------------------------------------------------------

    This will apply the changes as mentioned in the terraform template and also create the following file
    "terraform.tfstate" in the same directory

----------------------------------------------------------------------------------------------------------------------------------------
Output of "terraform apply -auto-approve"
----------------------------------------------------------------------------------------------------------------------------------------

	PS C:\Users\samarth\_code_repo\Infrastructure\Terraform\AWS\EC2\001-Connect-To-AWS-Create-EC2-Instance> terraform apply -auto-approve

	Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
	  + create

	Terraform will perform the following actions:

	  # aws_instance.my-ec2-instance will be created
	  + resource "aws_instance" "my-ec2-instance" {
		  + ami                                  = "ami-006dcf34c09e50022"
		  + arn                                  = (known after apply)
		  + associate_public_ip_address          = (known after apply)
		  + availability_zone                    = (known after apply)
		  + cpu_core_count                       = (known after apply)
		  + cpu_threads_per_core                 = (known after apply)
		  + disable_api_stop                     = (known after apply)
		  + disable_api_termination              = (known after apply)
		  + ebs_optimized                        = (known after apply)
		  + get_password_data                    = false
		  + host_id                              = (known after apply)
		  + host_resource_group_arn              = (known after apply)
		  + iam_instance_profile                 = (known after apply)
		  + id                                   = (known after apply)
		  + instance_initiated_shutdown_behavior = (known after apply)
		  + instance_state                       = (known after apply)
		  + instance_type                        = "t2.micro"
		  + ipv6_address_count                   = (known after apply)
		  + ipv6_addresses                       = (known after apply)
		  + key_name                             = (known after apply)
		  + monitoring                           = (known after apply)
		  + outpost_arn                          = (known after apply)
		  + password_data                        = (known after apply)
		  + placement_group                      = (known after apply)
		  + placement_partition_number           = (known after apply)
		  + primary_network_interface_id         = (known after apply)
		  + private_dns                          = (known after apply)
		  + private_ip                           = (known after apply)
		  + public_dns                           = (known after apply)
		  + public_ip                            = (known after apply)
		  + secondary_private_ips                = (known after apply)
		  + security_groups                      = (known after apply)
		  + source_dest_check                    = true
		  + subnet_id                            = (known after apply)
		  + tags                                 = {
			  + "Name" = "my-ec2-instance-03022023"
			}
		  + tags_all                             = {
			  + "Name" = "my-ec2-instance-03022023"
			}
		  + tenancy                              = (known after apply)
		  + user_data                            = (known after apply)
		  + user_data_base64                     = (known after apply)
		  + user_data_replace_on_change          = false
		  + vpc_security_group_ids               = (known after apply)

		  + capacity_reservation_specification {
			  + capacity_reservation_preference = (known after apply)

			  + capacity_reservation_target {
				  + capacity_reservation_id                 = (known after apply)
				  + capacity_reservation_resource_group_arn = (known after apply)
				}
			}

		  + ebs_block_device {
			  + delete_on_termination = (known after apply)
			  + device_name           = (known after apply)
			  + encrypted             = (known after apply)
			  + iops                  = (known after apply)
			  + kms_key_id            = (known after apply)
			  + snapshot_id           = (known after apply)
			  + tags                  = (known after apply)
			  + throughput            = (known after apply)
			  + volume_id             = (known after apply)
			  + volume_size           = (known after apply)
			  + volume_type           = (known after apply)
			}

		  + enclave_options {
			  + enabled = (known after apply)
			}

		  + ephemeral_block_device {
			  + device_name  = (known after apply)
			  + no_device    = (known after apply)
			  + virtual_name = (known after apply)
			}

		  + maintenance_options {
			  + auto_recovery = (known after apply)
			}

		  + metadata_options {
			  + http_endpoint               = (known after apply)
			  + http_put_response_hop_limit = (known after apply)
			  + http_tokens                 = (known after apply)
			  + instance_metadata_tags      = (known after apply)
			}

		  + network_interface {
			  + delete_on_termination = (known after apply)
			  + device_index          = (known after apply)
			  + network_card_index    = (known after apply)
			  + network_interface_id  = (known after apply)
			}

		  + private_dns_name_options {
			  + enable_resource_name_dns_a_record    = (known after apply)
			  + enable_resource_name_dns_aaaa_record = (known after apply)
			  + hostname_type                        = (known after apply)
			}

		  + root_block_device {
			  + delete_on_termination = (known after apply)
			  + device_name           = (known after apply)
			  + encrypted             = (known after apply)
			  + iops                  = (known after apply)
			  + kms_key_id            = (known after apply)
			  + tags                  = (known after apply)
			  + throughput            = (known after apply)
			  + volume_id             = (known after apply)
			  + volume_size           = (known after apply)
			  + volume_type           = (known after apply)
			}
		}

	Plan: 1 to add, 0 to change, 0 to destroy.
	aws_instance.my-ec2-instance: Creating...
	aws_instance.my-ec2-instance: Still creating... [10s elapsed]
	aws_instance.my-ec2-instance: Still creating... [20s elapsed]
	aws_instance.my-ec2-instance: Still creating... [30s elapsed]
	aws_instance.my-ec2-instance: Creation complete after 32s [id=i-0fbd4c1adccdf2f03]

	Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
	PS C:\Users\samarth\_code_repo\Infrastructure\Terraform\AWS\EC2\001-Connect-To-AWS-Create-EC2-Instance> 

----------------------------------------------------------------------------------------------------------------------------------------