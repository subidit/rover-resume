#kills docker latex process, because when fails it does not respond to keyboard
#and I am lazy to search for proper Docker params
kill `ps -ef|grep pdflatex|grep -ve grep|awk '{ print $2 }'`

