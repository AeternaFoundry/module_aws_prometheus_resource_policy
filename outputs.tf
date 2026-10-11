output "prometheus_resource_policies_policy_document" {
  description = "Map of policy_document values across all prometheus_resource_policies, keyed the same as var.prometheus_resource_policies"
  value       = { for k, v in aws_prometheus_resource_policy.prometheus_resource_policies : k => v.policy_document if v.policy_document != null && length(v.policy_document) > 0 }
}
output "prometheus_resource_policies_region" {
  description = "Map of region values across all prometheus_resource_policies, keyed the same as var.prometheus_resource_policies"
  value       = { for k, v in aws_prometheus_resource_policy.prometheus_resource_policies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "prometheus_resource_policies_revision_id" {
  description = "Map of revision_id values across all prometheus_resource_policies, keyed the same as var.prometheus_resource_policies"
  value       = { for k, v in aws_prometheus_resource_policy.prometheus_resource_policies : k => v.revision_id if v.revision_id != null && length(v.revision_id) > 0 }
}
output "prometheus_resource_policies_workspace_id" {
  description = "Map of workspace_id values across all prometheus_resource_policies, keyed the same as var.prometheus_resource_policies"
  value       = { for k, v in aws_prometheus_resource_policy.prometheus_resource_policies : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

