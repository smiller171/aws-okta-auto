function _pure_prompt_awsenv --description "Display AWS Okta Profile"
    if test -n "$AWS_OKTA_PROFILE"
        set --local awsenv (basename "$AWS_OKTA_PROFILE")
        set --local awsenv_color (set_color yellow)

        echo "$awsenv_color$awsenv"
    end
end
