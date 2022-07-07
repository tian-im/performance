class UsersController < ApplicationController
  def index
    @users = []
  end

  def new_objects
    @users = (1..100).map do |i|
      User.new id: i, name: "name#{i}"
    end

    render :index
  end

  def all_records
    @users = User.first(100)

    render :index
  end

  def find_each_record
    @users = (1..100).map do |i|
      User.find i
    end

    render :index
  end
end
