variable "token" {
  type        = string
  description = "github token to connect github repo"
  default     = "<YOUR_TOKEN>"
}

variable "repository" {
  type        = string
  description = "github repo url"
  default     = "https://github.com/steam0/hello-nt.git"
}

variable "app_name" {
  type        = string
  description = "AWS Amplify App Name"
  default     = "hello-nt-aws-amplify"
}

variable "branch_name" {
  type        = string
  description = "AWS Amplify App Repo Branch Name"
  default     = "main"
}

variable "domain_name" {
  type        = string
  default     = "amplifyapp.com"
  description = "AWS Amplify Domain Name"
}