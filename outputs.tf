
output "instances_self_links" {
  description = "List of self-links for compute instances"
  value       = google_compute_instance_from_template.compute_instance[*].self_link
}

output "instances_details" {
  description = "List of all details for compute instances"
  sensitive   = true
  value       = google_compute_instance_from_template.compute_instance[*]
}

output "available_zones" {
  description = "List of available zones in region"
  value       = data.google_compute_zones.available.names
}
output "self_link_unique" {
  description = "Unique self-link of instance template (recommended output to use instead of self_link)"
  value       = google_compute_instance_template.tpl.self_link_unique
}

output "self_link" {
  description = "Self-link of instance template"
  value       = google_compute_instance_template.tpl.self_link
}

output "name" {
  description = "Name of instance template"
  value       = google_compute_instance_template.tpl.name
}

output "tags" {
  description = "Tags that will be associated with instance(s)"
  value       = google_compute_instance_template.tpl.tags
}
