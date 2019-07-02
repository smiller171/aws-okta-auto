function _okta_aws_prompt --description "Display AWS Okta Profile"
    if test -n "$AWS_OKTA_PROFILE"
        set --local awsenv (basename "$AWS_OKTA_PROFILE")
        set --local awsenv_color (set_color yellow)
        echo "$awsenv_color$awsenv"
    else if test -n "$AWS_DEFAULT_PROFILE"
        set --local awsenv (basename "$AWS_DEFAULT_PROFILE")
        set --local awsenv_color (set_color yellow)
        echo "$awsenv_color$awsenv"
    end
end
