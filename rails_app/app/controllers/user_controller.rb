class UserController < ApplicationController
  def index
    @users = (1..100).map do |i|
      User.new id: i, name: "name#{i}"
    end
  end

  def index_db
    @users = (1..100).map do |i|
      User.find i
    end

    render :index
  end
end
