## Deployment
Minh Le - s3722599
https://protected-citadel-87960.herokuapp.com/

#LOGS
2020-06-12T21:03:22.792483+00:00 heroku[web.1]: State changed from up to starting
2020-06-12T21:03:24.511235+00:00 heroku[web.1]: Stopping all processes with SIGTERM
2020-06-12T21:03:24.553427+00:00 app[web.1]: - Gracefully stopping, waiting for requests to finish
2020-06-12T21:03:24.556430+00:00 app[web.1]: === puma shutdown: 2020-06-12 21:03:24 +0000 ===
2020-06-12T21:03:24.556436+00:00 app[web.1]: - Goodbye!
2020-06-12T21:03:24.556550+00:00 app[web.1]: Exiting
2020-06-12T21:03:24.692743+00:00 heroku[web.1]: Process exited with status 143
2020-06-12T21:03:25.000000+00:00 app[api]: Build succeeded
2020-06-12T21:03:25.809991+00:00 heroku[web.1]: Starting process with command `bin/rails server -p ${PORT:-5000} -e production`
2020-06-12T21:03:31.281376+00:00 heroku[web.1]: State changed from starting to up



## Building the rails App

1. Run `docker-compose build` after every Gemfile change or to build the containers

## Running the rails App
1. Run `docker-compose up` to run the rails app
2. hit `http://0.0.0.0:3000`

## Debugging the Rails App

1. Add `binding.pry` or `byebug` in your code where you want to put the breakpoint.
2. Run `docker-compose run --service-port --rm web` in your console to run the rails app in Debug mode
3. Access the endpoint you are debugging to go into debugging mode in pry or byebug

## Rails CHEATSHEET using docker

1. `docker-compose run --rm web rails new . --force --no-deps --database=postgresql`
2. `docker-compose run --rm web bundle install`
3. `docker-compose run --rm web bundle update`
4. `docker-compose run --rm web rails db:create`
5. `docker-compose run --rm web rails db:migrate`
6. `docker-compose run --rm web rails db:drop`
7. `docker-compose run --rm web rails assets:precompile`
8. `docker-compose run --rm web rails console`
9. `docker-compose run --rm web rails test`
