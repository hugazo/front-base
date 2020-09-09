# 42devs-web-base

## What does this have?

- Nuxt JS
- VueJS
- Bulma CSS
- Axios
- Eslint Airbnb - Base + Nuxt Recommended


## Dev Setup

```bash
# install dependencies
$ yarn install

# serve with hot reload at localhost:3000
$ yarn dev

# build for production and launch server
$ yarn build
$ yarn start

# generate static project
$ yarn generate
```

## Docker Build

For docker image build run:

```bash
# Generate Docker Image
$ yarn image:build
# OR
$ docker build --tag 42webimage .


# Run Container
$ yarn image:run
# OR
$ docker run -it --rm -d -p 8080:80 --name 42web 42webimage

# Clean the dangling images
$ yarn image:clean
$ docker image prune
```

## Further Documentation

For detailed explanation on how things work, check out [Nuxt.js docs](https://nuxtjs.org).
