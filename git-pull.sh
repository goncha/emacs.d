#!/bin/sh


for repo in $(cat <<EOF
anything-config
paredit
slime
yasnippet
zencoding
EOF
)
do
    if [ ! -d "${repo}" ]
    then
	git clone "git@github.com:goncha/${repo}.git"
    fi
done
