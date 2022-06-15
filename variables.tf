variable "service" {
  type        = string
  description = "Name of the service the resource is provisioned for."
}

variable "environment" {
  type        = string
  description = "Environment the resource will be deployed to"
}

variable "index_page" {
  type        = string
  description = "Name of index page"
  default     = "index.html"
}

variable "configure_content_hosting" {
  type        = bool
  description = "Whether to configure static content hosting on the bucket"
  default     = false
}