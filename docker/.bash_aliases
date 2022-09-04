# https://stackoverflow.com/questions/36388465/how-can-i-set-bash-aliases-for-docker-containers-in-dockerfile

<<comment
docker run \
    -it \
    --rm \
    -v ~/.bash_aliases:/tmp/.bash_aliases \
    [image] \
    /bin/bash --init-file /tmp/.bash_aliases

echo 'alias what="echo it works"' > my_aliases
docker run -it --rm -v ~/my_aliases:/tmp/my_aliases ubuntu:18.04 /bin/bash --init-file /tmp/my_aliases
alias

comment

