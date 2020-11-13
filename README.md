# README

My name is Michael and I am a developer based in Barcelona.

Instead of Instagram I am creating Monkstagram which will (probably) take the world by storm.

If you would like 'in' on the ground floor you can reach me at...

linkedin.com/in/michael-sut

## Getting started

To run the application, you must use the followng:

```bash

# Install dependencies
bundle install

# Run server
rails s
```

### Using docker

To build a container of the application, you can use the following

```bash
docker build  --tag monkstagram:1.0 .
```

Then to run the application, you can use:

```bash
docker run -p 127.0.0.1:3000:3000/tcp monkstagram
```
