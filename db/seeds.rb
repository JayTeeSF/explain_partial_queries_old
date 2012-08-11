# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Book.delete_all

ME = User.create!(name: "me")

book_attrs_ary = []
15026.downto(1).each do |count|
  book_attrs_ary << {title: "book_#{count}"}
end
Book.create!( book_attrs_ary )


ME.book_id= Book.first.id
