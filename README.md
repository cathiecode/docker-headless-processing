# Headless Processing environment for Docker
## Usage
### Option A. clone, rewrite and run
```
$ git clone git@github.com:cathiecode/docker-headless-processing
$ # Edit sketch/sketch.pde
$ make
$ docker run -it -v $(pwd)/sketch:/sketch headless-processing
```

### Option B. write your own Dockerfile
```Dockerfile
FROM docker-headless-processing
COPY your_sketch/* /sketch
```
