class Age < ActiveHash::Base
  include ActiveHash::Associations
  has_many :users

  self.data = [
    {id: 1, age: '10代'}, {id: 2, age: '20代'}, {id: 3, age: '30代'},
    {id: 4, age: '40代'}, {id: 5, age: '50代'}, {id: 6, age: '60代'},
    {id: 7, age: '70代以上'}
  ]
  
end