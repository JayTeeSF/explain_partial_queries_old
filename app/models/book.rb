class Book < ActiveRecord::Base
  has_many :users
  attr_accessible :title
end
