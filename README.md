# frisbii-on-fly

Frisbii instance deployed to Fly.io hosting CIDs for testing

See https://github.com/ipld/frisbii

## Development

Rebuild the docker image

```sh
docker build -t frisbii-on-fly .
```

Restart the container

```sh
docker rm -f frisbii && docker run -it --name frisbii -p 3000:3000 frisbii-on-fly
```

## Deployment

Run `fly deploy` to update the Fly.io deployment.

## CIDs

### random words

https://frisbii.fly.dev/ipfs/bafkreih25dih6ug3xtj73vswccw423b56ilrwmnos4cbwhrceudopdp5sq

```
bafkreih25dih6ug3xtj73vswccw423b56ilrwmnos4cbwhrceudopdp5sq
```

Created using [go-car](https://github.com/ipld/go-car/):

```sh
car create --file data/random-words.car --no-wrap data/random-words.txt
```
