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