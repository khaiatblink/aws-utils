# aws.sh

A utility script to allow running `make` commands for RxOS ([read more](https://blinkhealth.atlassian.net/wiki/spaces/EG/pages/3282567224/Setup+dev+session+to+enable+local+debugging+with+PyCharm))

## Usage

```sh
# Optionally add an alias in your .zshrc/.bashrc file
# alias gat='sh ~/path/to/aws.sh'
# clias lat='source ~/.aws/tokens'

# default to `dev` AWS profile, this generates ~/.aws/tokens
gat

# use `my-profile` AWS profile
gat -p my-profile

# source the tokens
lat

# reset AWS_* environment variables
gat -r
```
