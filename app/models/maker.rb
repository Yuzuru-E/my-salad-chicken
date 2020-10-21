class Maker < ActiveHash::Base
  include ActiveHash::Associations
  has_many :items
  
  self.data = [
    {id: 0, maker: 'アマタケ'}, {id: 1, maker: 'セブンイレブン'},
    {id: 2, maker: 'ファミリーマート'}, {id: 3, maker: 'ローソン'}
  ]
  
end