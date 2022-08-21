# README
## pre-req's
* MUST have docker and docker-compose installed.

```
1. just cd to this directory and run `docker-compose up -d --build`
2. In case of custom configs it can be modified via the `postgresql.conf` mods.
3. In case of specific user/role and DB creations on startup it can be done via the custom_role.sql scripts. Its plain sql and can be modified as per requirements.
```

This compose creates and mounts 3 directories(data, logs, wal) for persistence and can be easily used for migrations and movement or mapping to other containers as well.

### INSTALLATION:
Simply go ahead and run the run.sh and it will take care of everything.
``` bash run.sh
```


### To login to the container:

```docker exec -it pg(or container_name) /bin/bash
```
### To login if you have psql installed:

* Locally:
```
psql -h localhost -d postgres -U postgres and pass the password from the custom role file.
```
* From another host:
```
psql -h ip_address_or_hostname -d postgres -U postgres
```
* NOTE: the password resides in custom_role.
