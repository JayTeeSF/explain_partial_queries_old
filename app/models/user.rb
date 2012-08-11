class User < ActiveRecord::Base
  scope :users_with_books, lambda {|book_ids| where(:book_id => book_ids)}
  has_one :book
  attr_accessible :book_id, :name
end
