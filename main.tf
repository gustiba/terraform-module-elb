resource "aws_elb" "this" {
  name               = var.ELB_NAME
  availability_zones = var.ELB_AZ

  listener {
    instance_port      = var.ELB_INSTANCE_PORT
    instance_protocol  = var.ELB_INSTANCE_PROTOCOL
    lb_port            = var.ELB_LB_PORT
    lb_protocol        = var.ELB_LB_PROTOCOL
  }

  health_check {
    healthy_threshold   = var.ELB_HEALTHY_THRESHOLD
    unhealthy_threshold = var.ELB_UNHEALTHY_THRESHOLD
    timeout             = var.ELB_TIMEOUT
    target              = var.ELB_TARGET
    interval            = var.ELB_INTERVAL

  }

  instances                   = var.ELB_INSTANCE
  cross_zone_load_balancing   = var.ELB_CROSS_ZONE
  idle_timeout                = var.ELB_IDLE_TIMEOUT
  connection_draining         = var.ELB_CONN_DRAINING
  connection_draining_timeout = var.ELB_CONN_DRAINING_TIMEOUT

  tags = {
    Name = var.ELB_NAME_TAG
  }
}