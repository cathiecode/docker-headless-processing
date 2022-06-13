all: image
image:	processing.tar.gz
	sudo docker build --tag=headless-processing .
processing.tar.gz:
	curl -L https://github.com/processing/processing4/releases/download/processing-1283-4.0b8/processing-4.0b8-linux-x64.tgz --output processing.tar.gz
