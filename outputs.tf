output "vault" {
  value       = module.kms-vault.vault
  description = "Vault output object"
}

output "key" {
  value       = module.kms-key.key
  description = "Key output object"
}