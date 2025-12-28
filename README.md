# docker-quaker-kr-de

## MISSION

Code of the docker image from the website quaker-kr-de. It's static geneated code
by Hogo.

Used thema: [DPSG](https://themes.gohugo.io/themes/hugo-dpsg/)

## USE HUGO

To run local webserver enter:

```bash
hugo server  --environment production --ignoreCache -D --source ./hugo/
```

And check

<http://127.0.0.1:1313>

### ABOUT USED THEME

See [DPSG](https://themes.gohugo.io/themes/hugo-dpsg/)

### DOCKER BUILD

Enter:

```bash
podman build --no-cache -t local/docker-quaker-kr-de -f Dockerfile.fedora .
```

The Dockerfiles:

* **Dockerfile.alpine**: a multi stage image based on alpine linux
* **Dockerfile.fedora**: a multi stage image based on alpine linux and fedora
* **Dockerfile.nginx**: a singe stage image based on alpine linux without Hugo build

## CI/CD

Build and push by GitHub Actions.
