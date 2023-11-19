#!/usr/bin/env bash

function comment_github() {
    input="$@"
    comment=${input//\"/\\\"}
    curl -s \
     -H "Authorization: token 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" \
     "https://api.github.com/repos/abdelrahman1421/cloudrun/pulls/27/reviews" \
     -X POST \
     -d @- <<EOF 
     {"body": "$comment" } 
EOF
     
}
comment_github "Not supported ya man"
