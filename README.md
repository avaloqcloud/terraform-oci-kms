[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?zipUrl=https://github.com/josip-stanic/terraform-oci-kms/archive/refs/heads/main.zip)
# Terraform OCI KMS
The code provides a reusable Terraform module that provisions KMS Vault and Key on Oracle Cloud Infrastructure. Wraps 'terraform-oci-kms-vault' and 'terraform-oci-kms-key'.

## Example Input
`kms.auto.tfvars.json`:
```json
{
    "vault": {
        "compartment_id": "ocid1.tenancy.oc1..x",
        "display_name": "my-vault",
        "vault_type": "DEFAULT"
    },
    "key": {
        "compartment_id": "ocid1.tenancy.oc1..x",
        "display_name": "my-key-in-my-vault",
        "protection_mode": "HSM",
        "key_shape": {
            "algorithm": "AES",
            "length": 32
        }
    }
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.2.9 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 5.18.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms-key"></a> [kms-key](#module\_kms-key) | git::https://github.com/avaloqcloud/terraform-oci-kms-key | v0.0.1 |
| <a name="module_kms-vault"></a> [kms-vault](#module\_kms-vault) | git::https://github.com/avaloqcloud/terraform-oci-kms-vault | v0.0.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key"></a> [key](#input\_key) | Key input object | <pre>object({<br>    # Required<br>    compartment_id = string,<br>    display_name   = string,<br>    key_shape = object({<br>      algorithm = string,<br>      length    = number,<br>      curve_id  = optional(string),<br>    }),<br>    # Optional<br>    protection_mode = optional(string),<br>    defined_tags    = optional(map(string)),<br>    freeform_tags   = optional(map(string)),<br>    /*<br><br>      Not managed yet<br><br>    external_key_reference = optional(object({<br>      external_key_id = string,<br>    }))<br>    */<br>  })</pre> | n/a | yes |
| <a name="input_vault"></a> [vault](#input\_vault) | Vault input object | <pre>object({<br>    # Required<br>    compartment_id = string,<br>    display_name   = string,<br>    vault_type     = string,<br>    # Optional<br>    defined_tags  = optional(map(string)),<br>    freeform_tags = optional(map(string)),<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key"></a> [key](#output\_key) | Key output object |
| <a name="output_vault"></a> [vault](#output\_vault) | Vault output object |
<!-- END_TF_DOCS -->
