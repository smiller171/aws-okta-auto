# aws-okta-auto
automatically log into aws with aws-okta

## Installation
### fish
```fish
fisher add smiller171/aws-okta-auto
```

### bash/zsh
```bash
git clone https://github.com/smiller171/aws-okta-auto.git
echo "eval $(pwd)/aws-okta-auto/aws_okta_login.sh" >> ~/.bash_profile
```

## Usage
```fish
aws_okta_login ${profile-name}
aws s3 ls
```
