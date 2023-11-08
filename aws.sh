#!/bin/sh

unset AWS_ACCESS_KEY_ID
unset AWS_SECRET_ACCESS_KEY
unset AWS_SESSION_TOKEN

# Get CLI arguments
while getopts p:r option
do
    case "$option" in
        p) profile=${OPTARG};;
        r) reset=true;;
    esac
done

# Store AWS token exports
AWS_TOKEN_EXPORTS="/Users/$(whoami)/.aws/tokens"
test -f $AWS_TOKEN_EXPORTS || touch $AWS_TOKEN_EXPORTS

chmod +x $AWS_TOKEN_EXPORTS

echo "#!/bin/sh\n" > $AWS_TOKEN_EXPORTS
if [[ "$reset" = true ]]; then
    exit
fi

# Start an AWS session
SESSION="$(blink aws session ${profile:="dev"})"
echo $SESSION >> $AWS_TOKEN_EXPORTS
eval "$SESSION"
