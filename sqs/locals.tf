locals {
  deadLetterTargetArn = "arn:aws:sqs:us-east-1:849412284964:${var.sqs_dead_letter_queue_name}"
}