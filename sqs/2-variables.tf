variable "queue_name" {
    type = string
    description = "Queue name"
    default = "aws-queue"
}

variable "dead_letter_queue_name" {
    type = string
    description = "Dead letter queue name"
    default = "aws-queue-dlq"
}

variable "delay_seconds" {
    type = number
    description = "Delay seconds of the queue"
    default = 10
}

variable "max_message_size" {
    type = number
    description = "Max message size of the message"
    default = 2048
}

variable "message_retention_seconds" {
    type = number
    description = "Message retention seconds"
    default = 86400
}

variable "receive_wait_time_seconds" {
    type = number
    description = "Receive wait time seconds"
    default = 100
}