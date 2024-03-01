# SE-Project

Install [Docker and Docker Compose](https://docs.docker.com/get-docker/)

Run :

```bash
docker compose up
```

After the containers are up (PS: It may take a while and at least 10 GB of hard
disk space, only for the first time):

- Discourse will be available [here](http://localhost:4200)
- Frontend will be available [here](http://localhost:8080)
- Backend will be available [here](http://localhost:5001)

Also, right now hmr is not available for frontend, you will have to restart the
containers every time you make a change.

**Create an admin user for Discourse:**

When containers are running open a different terminal and run:

```bash
docker exec -it soft-engg-project-jan-2024-se-jan-23-discourse-1 /bin/bash
```

Then run:

```bash
bin/rails admin:create
```
