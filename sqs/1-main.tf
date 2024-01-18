resource "aws_sqs_queue" "aws_sqs_queue" {
    name = var.queue_name
    delay_seconds = var.delay_seconds
    max_message_size = var.max_message_size
    message_retention_seconds = var.message_retention_seconds
    receive_wait_time_seconds = var.receive_wait_time_seconds

    redrive_policy = jsonencode({
        deadLetterTargetArn = aws_sqs_queue.aws_dead_letter_queue.arn
        maxReceiveCount     = 5
    })

    tags = {
      Owner = "MJ"
    }
}

resource "aws_sqs_queue" "aws_dead_letter_queue" {
    name = var.dead_letter_queue_name
}

resource "aws_sqs_queue_redrive_allow_policy" "aws-sqs-redrive-policy" {

    queue_url = aws_sqs_queue.aws_dead_letter_queue.id
    redrive_allow_policy = jsonencode({
        redrivePermission = "byQueue"
        sourceQueueArns = [aws_sqs_queue.aws_sqs_queue.arn]
    })
}