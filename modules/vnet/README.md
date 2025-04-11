# Azure Virtual Network Module

This module provides a reusable Terraform configuration for deploying an Azure Virtual Network (VNET) along with its associated resources such as subnets.

## Usage

To use this module, include it in your Terraform configuration as follows:

```hcl
module "vnet" {
  source              = "../modules/vnet"
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_configs      = var.subnet_configs
  resource_group_name = var.resource_group_name
}
```

## Input Variables

| Name                  | Description                                           | Type   | Default | Required |
|-----------------------|-------------------------------------------------------|--------|---------|----------|
| `vnet_name`           | The name of the Virtual Network                       | string | n/a     | yes      |
| `address_space`       | The address space for the Virtual Network             | list   | n/a     | yes      |
| `subnet_configs`      | A list of subnet configurations                       | list   | n/a     | yes      |
| `resource_group_name` | The name of the resource group to create the VNET in | string | n/a     | yes      |

## Output Values

| Name          | Description                          |
|---------------|--------------------------------------|
| `vnet_id`     | The ID of the created Virtual Network |
| `subnet_ids`  | A list of IDs of the created subnets |

## Example

Here is an example of how to define the subnet configurations:

```hcl
subnet_configs = [
  {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  },
  {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }
]
```

## Clean Code Practices

To maintain clean code, consider using the following tools and processes:

- **Terraform fmt**: Automatically formats Terraform configuration files to a canonical format and style.
- **Terraform validate**: Validates the configuration files in a directory, ensuring they are syntactically valid and internally consistent.
- **Terraform plan**: Creates an execution plan, showing what actions Terraform will take to change the infrastructure.
- **TFLint**: A linter for Terraform that helps catch potential issues in the code before deployment.

By following these practices, you can ensure that your Terraform code is clean, maintainable, and free of common errors.