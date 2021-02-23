# Outputs

output "lc_id" {
  value = join(",",
    compact(
      coalescelist(
        aws_launch_configuration.lc.*.id,
        aws_launch_configuration.lc_ebs.*.id,
  [""])))
}

output "sg_id" {
  value = aws_security_group.sg_asg.id
}
