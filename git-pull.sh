#!/bin/sh


for repo in $(cat <<EOF
anything-config
paredit
slime
yasnippet
emmet
EOF
)
do
    if [ ! -d "${repo}" ]
    then
	git clone "git@github.com:goncha/${repo}.git"
    fi
done
