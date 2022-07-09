require 'sinatra/activerecord'
require 'sinatra'

class App < Sinatra::Base
  get '/' do
    'Helloworld'
  end

  get '/users/new_objects' do
    users = (1..100).map do |i|
      User.new id: i, name: "name#{i}"
    end
    erb :index, locals: { users: users }
  end

  get "/users/all_records" do
    users = User.first(100)
    erb :index, locals: { users: users }
  end

  get '/users/find_each_record' do
    users = (1..100).map do |i|
      User.find i
    end
    erb :index, locals: { users: users }
  end
end

class User < ActiveRecord::Base
end
