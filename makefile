#!make
.PHONY: build build-docker
.DEFAULT_GOAL := build

build:
	@make -s build-docker
	docker run --rm --volume "$$(pwd):/data" --user $$(id -u):$$(id -g) pandoc-2-ubuntu --pdf-engine=xelatex -H cv.tex -V linkcolor:blue -V geometry:a4paper -V geometry:margin=2cm -V mainfont="DejaVu Serif" -V monofont="DejaVu Sans Mono" README.md -o CV.pdf

build-docker:
	docker build -t pandoc-2-ubuntu .
