CV_IMAGE=katcipis/cv

all: image
	podman run -v `pwd`:/cv $(CV_IMAGE) xelatex cv.tex && \
	evince cv.pdf

image:
	podman build -t $(CV_IMAGE) .

shell: image
	podman run -ti -v `pwd`:/cv $(CV_IMAGE) bash

publish: image
	podman push $(CV_IMAGE)
