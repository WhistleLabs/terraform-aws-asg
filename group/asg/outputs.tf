# Outputs

output "asg_id" {
  value = coalesce(
    join(",", aws_autoscaling_group.asg.*.id),
    join(",", aws_autoscaling_group.asg_elb.*.id),
  )
}

output "asg_arns" {
  value = concat(
    aws_autoscaling_group.asg.*.arn,
    aws_autoscaling_group.asg_elb.*.arn,
  )
}

output "asg_name" {
  value = coalesce(
    join(",", aws_autoscaling_group.asg.*.name),
    join(",", aws_autoscaling_group.asg_elb.*.name),
  )
}

