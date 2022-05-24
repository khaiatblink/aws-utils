# aws.sh

A utility script to allow debugging various services with PyCharm ([read more](https://blinkhealth.atlassian.net/wiki/spaces/EG/pages/3282567224/Setup+dev+session+to+enable+local+debugging+with+PyCharm))

## Pre-requisites

```sh
brew install truncate
```

## Usage

```sh
# Optionally add an alias in your .zshrc/.bashrc file
# alias awstokens='sh ~/path/to/aws.sh'

# default to `dev` AWS profile
awstokens

# use `my-profile` AWS profile
awstokens -p my-profile

# reset AWS_* environment variables
awstokens -r
```
