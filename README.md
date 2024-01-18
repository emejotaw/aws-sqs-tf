# aws-sqs-tf

### Validate
```sh
terraform validate
```

### Plan
```sh
terraform plan
```

### Apply
```sh
terraform apply
```

### Module usage example
```sh
module "sqs" {
    source = "./sqs"
    queue_name = "aws-queue"
    dead_letter_queue_name = "aws-queue-dlq"
}
```