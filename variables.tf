variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "A map of tags to assign to all resources."
  type        = map(string)
  default     = {
    project = "DevOpsChallenge"
  }
}