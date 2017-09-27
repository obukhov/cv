docker rm md2pdf
docker run --name md2pdf -it -v `pwd`:/mnt mdbuilder node convert.js -o CV.pdf README.md
