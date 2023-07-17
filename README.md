# Docker Compose Build Convention

This repo is a part of demo for my talk at OTC Meetup #3

## Building an image

```bash
docker build -t <> .
```

## Running an image

```bash
docker run -d -p 80:80 <>:latest
```

## Building for app1

```bash
docker build -t app1 --target app1 .
```

## Building for app2

```bash
docker build -t app2 --target app2 .
```

## Running with Env

```bash
docker run -d -p 80:80 -e APP_ENV=development app1:latest
```
