class Store < ActiveHash::Base
  self.data = [
    { id: 1, name: '稼働店舗' },
    { id: 2, name: '梅田123+N' },
    { id: 3, name: 'マルハン梅田' },
    { id: 4, name: '大東洋梅田' },
    { id: 5, name: '梅田CLUB-D' },
    { id: 6, name: '123難波' },
    { id: 7, name: '楽園難波' },
    { id: 8, name: 'テキサス門真' }
  ]

  include ActiveHash::Associations
  has_many :sp_payments
end