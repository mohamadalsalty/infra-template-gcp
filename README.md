## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_backend-vm"></a> [backend-vm](#module\_backend-vm) | ./backend-vm | n/a |
| <a name="module_firewall"></a> [firewall](#module\_firewall) | ./firewall | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_firewall_http_rule"></a> [firewall\_http\_rule](#input\_firewall\_http\_rule) | The firewall rule name | `any` | n/a | yes |
| <a name="input_firewall_ssh_rule"></a> [firewall\_ssh\_rule](#input\_firewall\_ssh\_rule) | The firewall rule name | `any` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | The name to use for the network | `any` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the GCP project to create resources in | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region to create the VM in | `any` | n/a | yes |
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr) | The CIDR block to use for the subnet | `any` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | The name to use for the subnet | `any` | n/a | yes |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | The name to use for the VM | `any` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | The zone to create the VM in | `any` | n/a | yes |

## Outputs

No outputs.
