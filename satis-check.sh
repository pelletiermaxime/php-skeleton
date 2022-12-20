#!/bin/sh
# Bash script to analyze composer.lock files for dependencies that are not installed from Satis.

# Usage: "sh satis-check.sh path-to-project-root/"

# Get the path argument from the command line, default to the current dir
FOLDER=${1:-.}
cd $FOLDER

# Capture the output of grep, will be displayed in case of failure
RESULT=$(grep "api.github.com" composer.lock | grep -Ev "Roave/SecurityAdvisories|sentry-php-sdk|polyfill")

if [ "$RESULT" ]; then
    echo "Fail!"
    echo "Some dependencies are still installed from https://api.github.com/, add them to Satis. See the 'Update your composer.lock' section in https://app2.crowdbase.com/o/duproprio/g/it-dev-ti/notes/move-dependencies-to-satis for more details."
    echo "$RESULT"
    exit 1
else
    echo "Success!"
    echo "All dependencies are installed from Satis."
    exit 0
fi
