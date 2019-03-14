function aws_okta_login() {
  eval $(aws-okta exec $1 -- env | grep AWS - | sed 's/^/export /')
}
