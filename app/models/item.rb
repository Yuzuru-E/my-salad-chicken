class Item < ApplicationRecord
  has_many :users, through: :reviews
end
