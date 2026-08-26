variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "project_name"{
    type = string
    default = "roboshop"
}

variable "environment"{
    type = string
    default = "dev"
}

variable "vpc_tags"{
    type = map
    default = {}
}