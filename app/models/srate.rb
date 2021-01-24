class Srate < ActiveHash::Base
  self.data = [
    { id: 1, name: 'S換金率' ,rate: '1'},
    { id: 2, name: '56枚交換' ,rate: '17.85'},
    { id: 3, name: '51.52枚交換' ,rate: '19.41'},
    { id: 4, name: '47枚交換' ,rate: '21.27'},
    { id: 5, name: 'なし' , rate:'1'}
  ]

  include ActiveHash::Associations
  has_many :sp_payments
end