variable "ibmcloud_api_key" {
  description = "IBM Cloud API key"
  type        = string
}

// Data source arguments for list_scopes
variable "list_scopes_scope_id" {
  description = "An auto-generated unique identifier for the scope."
  type        = string
  default     = "1"
}

// Data source arguments for list_profiles
variable "list_profiles_profile_id" {
  description = "An auto-generated unique identifying number of the profile."
  type        = string
  default     = "3045"
}

// Data source arguments for list_latest_scans
variable "list_latest_scans_scan_id" {
  description = "The ID of the scan."
  type        = string
  default     = "262"
}

// Data source arguments for scans_summary
variable "scans_summary_scan_id" {
  description = "Your Scan ID."
  type        = string
  default     = "scan_id"
}
variable "scans_summary_profile_id" {
  description = "The profile ID. This can be obtained from the Security and Compliance Center UI by clicking on the profile name. The URL contains the ID."
  type        = string
  default     = "profile_id"
}

// Data source arguments for scan_summaries
variable "scan_summaries_profile_id" {
  description = "The profile ID. This can be obtained from the Security and Compliance Center UI by clicking on the profile name. The URL contains the ID."
  type        = string
  default     = "profile_id"
}
variable "scan_summaries_scope_id" {
  description = "The scope ID. This can be obtained from the Security and Compliance Center UI by clicking on the scope name. The URL contains the ID."
  type        = string
  default     = "scope_id"
}
variable "scan_summaries_scan_id" {
  description = "The ID of the scan."
  type        = string
  default     = "262"
}
