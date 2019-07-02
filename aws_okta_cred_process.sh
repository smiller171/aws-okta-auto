#! /bin/bash
eval $(aws-okta env $1)
export TOKEN_EXPIRATION="$(date -v +45M -u +%FT%TZ)"
jq -n '{
  "Version": 1,
  "AccessKeyId": $ENV.AWS_ACCESS_KEY_ID,
  "SecretAccessKey": $ENV.AWS_SECRET_ACCESS_KEY,
  "SessionToken": $ENV.AWS_SESSION_TOKEN,
  "Expiration": $ENV.TOKEN_EXPIRATION
}'
