# DynamoDemo

A simple [dynamo](https://github.com/josevalim/dynamo) application.

It is an example of simple Dynamo application, which:

* handles GET requests
* uses callbacks
* sets custom headers
* uses parametrized routes
* sets custom status code
* sends files

## Live app

This example app is also [deployed to
Heroku](http://dynamo-demo.herokuapp.com/).

## How to run it locally

1. Get [Elixir](http://elixir-lang.org). Beware that Dynamo depends on
   currently unstable Elixir 0.7.0.dev. If you're on Mac and are using
   Homebrew to manage packages, install the most recent Elixir:

   `$ brew install https://raw.github.com/gist/3443774/bef740467d6811dd5e0693fdf666ed8cb48b63c6/elixir.rb --HEAD`

2. Clone this repo:

   `$ git clone https://github.com/goshakkk/dynamo_demo.git && cd dynamo_demo`

3. Run server:

   `$ elixir --no-halt -S mix run "DynamoDemo.start"`

4. That's it. The app is now running at
   [localhost:3000](http://localhost:3000/).

## How to run it on Heroku

1. Create new Heroku Elixir app:

   `$ heroku create --buildpack "https://github.com/goshakkk/heroku-buildpack-elixir.git"`

2. Push it:

   `$ git push heroku master`

   It will take some time to deploy, normally 1-2 minutes.

3. Access it:

   `$ heroku open`

## API

The app implements very simple API

### GET /

Responds with blank JSON object.

### GET /version

Responds with JSON object containing `version` key with value of
`DynamoDemo.version`.

### GET /readme

Responds with plain text contents of this README.md file.

### GET /hello

Responds with JSON greeting the world.

### GET /hello/:name

Responds with JSON greeting `name`.

### GET /restricted

Responds with status code **451 Unavailable For Legal Reasons**.

## License

Released under the MIT license.
