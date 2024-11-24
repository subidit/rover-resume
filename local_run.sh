#docker run --rm -t --user="$(id -u):$(id -g)" --net=none -v "$(pwd):/tmp" leplusorg/latex latexmk -outdir=/tmp -pdf /tmp/$1
docker run --rm -t --user="$(id -u):$(id -g)" --net=none -v "$(pwd):/tmp" a6c5060534a2 latexmk -outdir=/tmp -pdf /tmp/$1
