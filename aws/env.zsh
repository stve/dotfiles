export EC2_HOME="$(brew --prefix ec2-api-tools)/libexec"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export AWS_CREDENTIAL_FILE=$HOME/.ec2/aws-credentials-master
