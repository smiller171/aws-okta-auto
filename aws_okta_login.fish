function aws_okta_login
    aws-okta exec $argv[1] -- env | grep AWS - | sed 's/^/set -U /' | sed 's/=/ /' | source
end
