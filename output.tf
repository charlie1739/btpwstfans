# print retrieved secret values
output "c_secrets_key_value" {
  value = data.passwordsafe_secret.secrets_text.value
}
output "b_access_key_value" {
  value = data.passwordsafe_secret.access_text.value
}

# list user
output "a_iam_user_in_charlie-demo" {
  value = data.aws_iam_users.iam_users[*].names
}