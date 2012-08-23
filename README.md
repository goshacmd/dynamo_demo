# DynamoDemo

A simple [dynamo](https://github.com/josevalim/dynamo) application.

It is an example of simple Dynamo application, which:

* uses callbacks
* sets custom headers
* uses parametrized routes
* sets custom status code

## API

The app implements very simple API

### GET /

Responds with blank JSON object.

### GET /version

Responds with JSON object containing `version` key with value of
`DynamoDemo.version`.

### GET /hello

Responds with JSON greeting the world.

### GET /hello/:name

Responds with JSON greeting `name`.

### GET /restricted

Responds with status code **451 Unavailable For Legal Reasons**.

## Live app

This example app is also [deployed to
Heroku](http://dynamo-demo.herokuapp.com/).

## License

Released under the MIT license.
