# crystal_lucky

This is a project written using [Lucky](https://luckyframework.org). Enjoy!

### Setting up the project

1. [Install required dependencies](https://luckyframework.org/guides/getting-started/installing#install-required-dependencies)
1. Update database settings in `config/database.cr`
1. Run `script/setup`
1. Run `lucky dev` to start the app

### Learning Lucky

Lucky uses the [Crystal](https://crystal-lang.org) programming language. You can learn about Lucky from the [Lucky Guides](https://luckyframework.org/guides/getting-started/why-lucky).


### Installation

1. Installation of Crystal is done using [asdf](https://luckyframework.org/guides/getting-started/installing) version manager. At the time this is written, Lucky framework only supports Crystal v0.36.1, not v1.0.x.
2. [Overmind](https://github.com/DarthSim/overmind) is used as the process manager.


### API

```bash
$ curl -X POST -H 'content-type: application/json' -d '{"user":{"email": "john.doe@mail.com", "password": "123456", "password_confirmation":"123456"}}' http://127.0.0.1:5000/api/sign_ups
{"token":<generated_token>}%

# Visit
http://127.0.0.1:5000/api/me?auth_token=<generated_token>
```


## Creating a new model

```bash
$ lucky gen.model Post
$ lucky db.migrate
```


API
```bash
$ curl -X POST -H 'content-type: application/json' -d '{"post":{"body": "hello world"}}' http://127.0.0.1:5000/api/posts
{"id":"7cb6e887-cce5-4584-a7e0-fbbecaaf312e","body":"hello world"}%

# Visit
http://127.0.0.1:5000/api/posts
```
