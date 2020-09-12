class Gender < ActiveHash::Base
  self.data = [
    {id: 1, gender: '男性'}, {id: 2, gender: '女性'},
    {id: 3, gender: 'その他'}, {id: 4, gender: '回答しない'}
  ]
  include ActiveHash::Associations
  has_many :users
  
end