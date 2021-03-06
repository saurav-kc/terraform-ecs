
resource "aws_autoscaling_group" "bar" {
  name                      = "terraform-ecs-nginx"
  max_size                  = 1
  min_size                  = 1
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 1
  force_delete              = true
  launch_configuration      = "${aws_launch_configuration.default.name}"
  vpc_zone_identifier       = ["subnet-bbd8c195", "subnet-5f8c9f38"]
}

