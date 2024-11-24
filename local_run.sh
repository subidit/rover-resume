#docker run --rm -t --user="$(id -u):$(id -g)" --net=none -v "$(pwd):/tmp" leplusorg/latex latexmk -outdir=/tmp -pdf /tmp/$1
docker run --rm -t --user="$(id -u):$(id -g)" --net=none -v "$(pwd):/tmp" ghcr.io/xu-cheng/texlive-full latexmk -outdir=/tmp -pdf /tmp/$1
