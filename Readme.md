# SKOS Play docker

Docker setup for running [Skos Play](https://github.com/sparna-git/skos-play).

Once you clone this repository execute command, make two docker networks (web and backend):

```
docker-compose up
```

To access Tomcat dashboard enter `127.0.0.1:8080` in browser of choice, user/pass are admin/admin.
To access VocBench enter `127.0.0.1:8080/skosplay` in browser of choice (WARNING SKOS PLAY DOES NOT WORK!).
