[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?zipUrl=https://github.com/avaloqcloud/terraform-oci-kms/archive/refs/tags/v0.1.0.zip)

# Terraform terraform-oci-kms module

Terraform module to create KMS resources on Oracle Cloud Infrastructure.

## Usage
```hcl
module "hsm" {
  source = "git::https://github.com/avaloqcloud/terraform-oci-kms?ref=v0.1.0"

  compartment_id = "ocid1.tenancy.oc1..xxx"
  display_name   = "test"

}

resource "oci_vault_secret" "test_secret" {
  compartment_id = "ocid1.tenancy.oc1..xxx"
  secret_content {
    content_type = "BASE64"
    content      = "eyJ2ZXJ5X2ltcG9ydGFudF9zZWNyZXQiOiJzZWNyZXQifQo="
  }
  secret_name = "test_secret"
  vault_id    = module.hsm.kms["vault"].id
  key_id      = module.hsm.kms["key"].id
}
```


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.2.9 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 5.18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 5.18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_kms_key.vault_key](https://registry.terraform.io/providers/oracle/oci/5.18.0/docs/resources/kms_key) | resource |
| [oci_kms_vault.vault](https://registry.terraform.io/providers/oracle/oci/5.18.0/docs/resources/kms_vault) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | The OCID of the compartment. | `string` | n/a | yes |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | Display name of vault and key get derived from this value. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kms"></a> [kms](#output\_kms) | OCI KMS Vault object. Includes the 'oci\_kms\_vault' and 'oci\_kms\_key' resource as 'vault' and 'key' respectively. |