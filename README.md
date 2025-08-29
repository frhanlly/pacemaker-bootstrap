## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.10.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2"></a> [ec2](#module\_ec2) | ./modules/ec2 | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_ec2"></a> [ami\_ec2](#input\_ami\_ec2) | AMI for EC2 instances | `string` | n/a | yes |
| <a name="input_ec2_ssh_key_name"></a> [ec2\_ssh\_key\_name](#input\_ec2\_ssh\_key\_name) | ssh key name for accessing nodes | `string` | n/a | yes |
| <a name="input_ec2_type"></a> [ec2\_type](#input\_ec2\_type) | EC2 instance type | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | project name | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | region to deploy AWS resources | `string` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPC cidr block | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_one_public_ip"></a> [ec2\_one\_public\_ip](#output\_ec2\_one\_public\_ip) | First ec2 public ip |
| <a name="output_ec2_two_public_ip"></a> [ec2\_two\_public\_ip](#output\_ec2\_two\_public\_ip) | Second ec2 public ip |
