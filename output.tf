output "kms" {
  value       = local.kms_output
  description = "OCI KMS Vault object. Includes the 'oci_kms_vault' and 'oci_kms_key' resource as 'vault' and 'key' respectively."
}