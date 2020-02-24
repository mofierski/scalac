#!/bin/bash

ssh_credentials="username@server"
remote_file="/path/to/file"
params=( "$@" )

tar -cvpf backup.tar "${params[@]}"
gpg -c backup.tar
scp backup.tar.gpg ${ssh_credentials}:${remote_file}
