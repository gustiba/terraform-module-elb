variable "ELB_NAME" {
    type = string
}

variable "ELB_AZ" {
    type = list
}

variable "ELB_INSTANCE_PORT" {
    type = number
}

variable "ELB_INSTANCE_PROTOCOL" {
    type = string
}

variable "ELB_LB_PORT" {
    type = number
}

variable "ELB_LB_PROTOCOL" {
    type = string
}

variable "ELB_HEALTHY_THRESHOLD" {
    type = number
}

variable "ELB_UNHEALTHY_THRESHOLD" {
    type = number
}

variable "ELB_TIMEOUT" {
    type = number
}

variable "ELB_TARGET" {
    type = string
}

variable "ELB_INTERVAL" {
    type = number
}

variable "ELB_INSTANCE" {
    type = list
}

variable "ELB_CROSS_ZONE" {
    type = bool
}

variable "ELB_IDLE_TIMEOUT" {
    type = number
}

variable "ELB_CONN_DRAINING" {
    type = bool
}

variable "ELB_CONN_DRAINING_TIMEOUT" {
    type = number
}

variable "ELB_NAME_TAG" {
    type = string
}
