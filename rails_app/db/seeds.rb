# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ActiveRecord::Base.connection.truncate_tables(:users, :messages)
ActiveRecord::Base.connection.execute <<~SQL
  ALTER SEQUENCE users_id_seq RESTART WITH 1;
  ALTER SEQUENCE messages_id_seq RESTART WITH 1;
SQL

(1..100).each do |i|
  user = User.create!(name: "name#{i}")
  (1..10).each do |j|
    Message.create(title: "title#{j} for name#{i}", recipient: user)
  end
end
