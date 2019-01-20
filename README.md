# dev_base
a container with developer tools

## Usage

```
$ docker build -t dev .
$ docker build --build-arg UN=somename -t dev .
```

```
$ docker run -it --rm -v /path/to/code:/home/somename/code dev
```
