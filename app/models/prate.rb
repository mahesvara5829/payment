class Prate < ActiveHash::Base
  self.data = [
    { id: 1, name: 'P換金率' , rate:'1'},
    { id: 2, name: '28玉交換' , rate:'3.57'},
    { id: 3, name: 'なし' , rate:'1'}
  ]

  include ActiveHash::Associations
  has_many :sp_payments
end