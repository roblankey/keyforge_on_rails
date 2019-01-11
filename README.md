# KeyForge On Rails
[![Build Status](https://travis-ci.com/roblankey/keyforge_on_rails.svg?branch=master)](https://travis-ci.com/roblankey/keyforge_on_rails)

Rails application serving information on the card game [KeyForge](https://www.keyforgegame.com/), created by Richard Garfield and produced by Fantasy Flight Games

#### Building

The application is built on Ruby 2.5.3 and Rails 5.2.2 and bundled with Bundler 1.17.2

#### Database

Migrations and database are spec'd to PostgreSQL. Standard Rails setup and migrations apply

```bash
rails db:setup
rails db:seed
```

#### Running

Standard Rails server applies as well here. So running is as easy as
```bash
rails s
```

####JSON-API

The application provides interfaces to the card information via ActiveRecord through [JSONAPI Suite](https://github.com/jsonapi-suite) 
and the [JSONAPI](https://jsonapi.org/) specification