variable ec2_instance_count {
    description = "Number of EC2 instances to create"
    type = map(any)
    default = {
        "dev" = 1
    }
}

variable "instance_os" {
    description = "Operating system for the EC2 instance"
    type = map(any)
    default = {
        "amazon_linux_2023" = "ami-0e38835daf6b8a2b9"
    }
}

variable "instance_type" {
    description = "Type of EC2 instance"
    type = map(any)
    default = {
        "dev" = "t3.micro"
    }
}

variable tags {
    description = "Tags to apply to resources"
    type = map(any)
    default = {
        "Environment" = "dev"
    }
}

variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type        = string
    default     = "10.0.0.0/16"
}