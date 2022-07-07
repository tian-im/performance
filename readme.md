# Start Rails app and test performance

```shell
cd rails_app
rails s
wrk -t12 -c100 -d10s http://127.0.0.1:3000/users/new_objects
wrk -t12 -c100 -d10s http://127.0.0.1:3000/users/all_records
wrk -t12 -c100 -d10s http://127.0.0.1:3000/users/find_each_record
```
