# Docker mkdocs [![Docker Automated build](https://img.shields.io/docker/automated/elamperti/docker-mkdocs.svg)](https://hub.docker.com/r/elamperti/docker-mkdocs/)
Alpine based container to use [MkDocs](http://www.mkdocs.org/).

## Usage
These are basic examples based on the [Getting started](http://www.mkdocs.org/#getting-started) section of MkDocs.

### Bootstrap a project
Botstraps MkDocs in the current directory:

```
docker run -it -v $(pwd):/doc elamperti/docker-mkdocs new .
```

### Serve a project
Useful for testing. This will serve the current directory:

```
docker run -it -v $(pwd):/doc -p 8000:8000 elamperti/docker-mkdocs serve -a 0.0.0.0:8000
```

### Build a project
Generates a static site using the markdown files:

```
docker run -it -v $(pwd):/doc elamperti/docker-mkdocs build
```

## Customizing
MkDocs uses a YML configuration file (`mkdocs.yml`), for more information on that read [their documentation](http://www.mkdocs.org/user-guide/configuration/).
You may find specially useful the `docs_dir` and `site_dir` settings, as they specify from where docs are read and to which directory the site is built.

