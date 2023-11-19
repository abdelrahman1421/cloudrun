#!/usr/bin/env bash

function comment_github() {
    input="$@"
    comment=${input//\"/\\\"}
    curl -s \
     -H "Authorization: token $(cat token)" \
     "https://api.github.com/repos/abdelrahman1421/cloudrun/pulls/27/reviews" \
     -X POST \
     -d @- <<EOF 
     {"body": "$comment" } 
EOF
     
}
comment_github "Not supported ya man"
