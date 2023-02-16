resource "aws_sqs_queue" "sqs_queue" {
  count = var.create ? 1 : 0

  name                       = var.sqs_queue_name
  delay_seconds              = var.delay_seconds
  max_message_size           = var.max_message_size
  message_retention_seconds  = var.message_retention_seconds
  receive_wait_time_seconds  = var.receive_wait_time_seconds
  visibility_timeout_seconds = var.visibility_timeout_seconds

  policy = var.sqs_queue_policy
  redrive_policy = jsonencode({
    "deadLetterTargetArn" = aws_sqs_queue.deadletter_queue.arn,
    "maxReceiveCount"     = var.maxReceiveCount
  })

  lifecycle {
    create_before_destroy = true
    ignore_changes        = []
  }

  depends_on = []
  tags = module.tags.commontags
}

resource "aws_sqs_queue" "deadletter_queue" {
  name                       = "${var.sqs_queue_name}-DLQ"
  message_retention_seconds  = var.message_retention_seconds
  visibility_timeout_seconds = var.visibility_timeout_seconds
  
}

module "tags" {
  source = "../common_tags"

  name            = var.name
  enviroment      = var.enviroment
  application     = var.application
  support         = var.support
  creater         = var.creater
  additional_tags = var.additional_tags


}
