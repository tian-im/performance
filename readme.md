# Start Rails app and test performance

```shell
cd rails_app
rails s
wrk -t12 -c100 -d10s http://127.0.0.1:3000/
wrk -t12 -c100 -d10s http://127.0.0.1:3000/users/new_objects
wrk -t12 -c100 -d10s http://127.0.0.1:3000/users/all_records
wrk -t12 -c100 -d10s http://127.0.0.1:3000/users/find_each_record
```

# Start Sinatra app and test performance

```shell
cd sinatra_app
thin start
wrk -t12 -c100 -d10s http://127.0.0.1:3000/
wrk -t12 -c100 -d10s http://127.0.0.1:3000/users/new_objects
wrk -t12 -c100 -d10s http://127.0.0.1:3000/users/all_records
wrk -t12 -c100 -d10s http://127.0.0.1:3000/users/find_each_record
```

# Start Koa app and test performance

```shell
cd koa_app
yarn dev
wrk -t12 -c100 -d10s http://127.0.0.1:4000/
wrk -t12 -c100 -d10s http://127.0.0.1:4000/users/new_objects
wrk -t12 -c100 -d10s http://127.0.0.1:4000/users/all_records
wrk -t12 -c100 -d10s http://127.0.0.1:4000/users/find_each_record
```
