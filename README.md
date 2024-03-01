# Discourse-Docker

- Install [Docker and Docker Compose](https://docs.docker.com/get-docker/)

Run :

```bash
docker compose up
```

After the containers are up (PS: It may take a while for the first time and at least 10 GB of hard
disk space and 10 gigs of available ram or swap):

- Discourse will be available [here](http://localhost:4200)

**Create an admin user for Discourse:**

When containers are running open a different terminal and run:

*If the command below fails please check the container name or use the tty provided by docker desktop*

```bash
docker exec -it discourse-docker-discourse-1 /bin/bash
```

Then run:

```bash
bin/rails admin:create
```
