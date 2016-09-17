CV_IMAGE=katcipis-dv

all: image
	docker run -v `pwd`:/cv $(CV_IMAGE) xelatex cv.tex

image:
	docker build -t $(CV_IMAGE) .

check: all
	evince cv.pdf
