resource "aws_launch_template" "this" {
  name_prefix   = "devops-lt-"
  image_id      = "ami-0a7cf821b91bcccbc" # Amazon Linux 2
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = base64encode(file("userdata.sh"))

  vpc_security_group_ids = [aws_security_group.ssh.id]

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "devops-asg-instance"
    }
  }
}

resource "aws_autoscaling_group" "this" {
  desired_capacity     = 2
  max_size             = 3
  min_size             = 1
  vpc_zone_identifier  = [aws_subnet.public.id]

  launch_template {
    id      = aws_launch_template.this.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "devops-asg"
    propagate_at_launch = true
  }
}
