variable "proxmox_endpoint" {
  type        = string
  sensitive   = true
  description = "The API URL of your Proxmox node (e.g., https://192.168.1.100:8006/)"
}

variable "proxmox_api_token" {
  type        = string
  sensitive   = true
  description = "Proxmox API Token (ID=Secret)"
}

variable "node_name" {
  type    = string
  default = "pve"
}