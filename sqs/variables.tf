variable "create" {
  description = "Whether or not to create resource in the module. Defaults to 'true'."
  default     = true
}

variable "enable_dead_letter_queue" {
  description = "Whether or not to create resource in the module. Defaults to 'true'."
  default     = false
}

variable "sqs_queue_name" {
  description = "SQS Queue name"
  default     = ""
}

variable "sqs_dead_letter_queue_name" {
  description = "SQS Dead letter Queue name"
  default     = ""
}

variable "delay_seconds" {
  description = "The time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds."
  default     = 60
}

variable "sqs_dead_letter_queue_delay_seconds" {
  description = "The time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds."
  default     = 60
}

variable "max_message_size" {
  description = "The limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB). The default for this attribute is 262144 (256 KiB)."
  default     = 262144
}

variable "sqs_dead_letter_queue_max_message_size" {
  description = "The limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB). The default for this attribute is 262144 (256 KiB)."
  default     = 262144
}

variable "message_retention_seconds" {
  description = "The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days)."
  default     = 259200
}

variable "sqs_dead_letter_queue_message_retention_seconds" {
  description = "The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days)."
  default     = 259200
}

variable "receive_wait_time_seconds" {
  description = "The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately."
  default     = 0
}

variable "sqs_dead_letter_queue_receive_wait_time_seconds" {
  description = "The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately."
  default     = 0
}


variable "visibility_timeout_seconds" {
  description = "the timeout in seconds of visibility of the message"
  default     = 600
}

variable "sqs_dead_letter_queue_visibility_timeout_seconds" {
  description = "the timeout in seconds of visibility of the message"
  default     = 600
}

variable "sqs_queue_policy" {
  description = "(Optional) The JSON policy for the SQS queue. For more information about building AWS IAM policy documents with Terraform"
  default     = null
}

variable "sqs_dead_letter_queue_policy" {
  description = "(Optional) The JSON policy for the SQS queue. For more information about building AWS IAM policy documents with Terraform"
  default     = null
}

variable "create_sqs_queue_policy" {
  description = "Create SQS queue policy"
  default     = false
}

variable "create_sqs_dead_letter__queue_policy" {
  description = "Create SQS queue policy"
  default     = false
}

variable "maxReceiveCount" {
  description = "Value for redrive_policy (set maxReceiveCount for dead_letter_queue)"
  default     = 10
}

variable "sqs_dead_letter_queue_arn" {
  description = "Set sqs arn for dead_letter_queue"
  default     = 0
}



variable "queue_url" {
  description = "(Required) The URL of the SQS Queue to which to attach the policy"
  default     = ""
}

#-----------------------------------------------------------
# Common tags Variables
#-----------------------------------------------------------

variable "application" {
  type        = string
  description = "Provide application name"

}
variable "name" {
  type        = string
  description = "Provide resource name"

}

variable "enviroment" {
  type        = string
  description = "Provide environment (DEV/TEST/PRD)"
}

variable "support" {
  type        = string
  description = "email ID of the user who can support on it"


}

variable "creater" {
  type        = string
  description = "Provide name of source or who is created the resource"
}

variable "additional_tags" {
  type        = map(string)
  default     = null
  description = "If user wants to add any other additional tags to resource"
}
