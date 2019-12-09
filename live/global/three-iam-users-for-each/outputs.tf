#output "for_directive_strip_marker" {
#  value =<<EOF
#%{~ for name in var.names }
#    ${name}
#%{~ endfor }
#EOF
#}

output "all_users" {
  value       = values(aws_iam_user.example)[0].name
}