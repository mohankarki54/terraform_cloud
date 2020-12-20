# Terraform and various cloud services. 

Terraform is the infrastructure as code tool from HashiCorp. It is a tool for building, changing, and managing infrastructure in a safe, repeatable way. 

# Advantanges: 

1) Platform Agnostic
2) State Management
3) Operator Confidence

Install Terraform
===============================================================================


[Tutorial
for installing the Terraform in MacOS, Windows & Linux](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started)


# Terraform command from initializing to destroying. 
```
$ terraform init
$ terraform validate
$ terraform plan
$ terraform apply -auto-approve
$ terraform show
$ terraform destroy
```

Amazon Web Services
=========================================================================

First, you need to configure you terminal using the command:

```
$aws configure
AWS Access Key ID [None]: accesskey
AWS Secret Access Key [None]: secretkey
Default region name [None]: us-east-1
Default output format [None]:
```
File staring with the aws_... are the one that are used to create the **AWS** resources. 

# Cheat for making Key pair executable in order to SSH for EC2:
```
chmod 400 Teraform_key.pem
```

# SSH to EC2 instance

```
ssh -i "Teraform_key.pem" ec2-user@Public IPv4 DNS
```
