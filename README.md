# ircanywhere dockerfile

## build image
```
docker.io build --rm -t ircanywhere .
```

## Usage
```
docker.io run --rm --name ircanywherecontainer -p 3000:3000 ircanywhere /bin/bash /data/ircanywhere/install.sh && node . run
```

