CV_IMAGE=katcipis-cv

all: image
	docker run -v `pwd`:/cv $(CV_IMAGE) xelatex cv.tex

image:
	docker build -t $(CV_IMAGE) .

shell: image
	docker run -ti -v `pwd`:/cv $(CV_IMAGE) bash


check: all
	evince cv.pdf
