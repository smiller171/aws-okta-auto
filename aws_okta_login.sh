function expose_aws_creds() {
  eval $(aws-okta exec $1 -- env | grep AWS - | sed 's/^/export /')
}
