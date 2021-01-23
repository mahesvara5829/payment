class Kisyu < ActiveHash::Base
  self.data = [
    { id: 1, name: '機種' },
    { id: 2, name: 'マイジャグ４' },
    { id: 3, name: 'マイジャグ３' },
    { id: 4, name: 'GOジャグ２' },
    { id: 5, name: 'リゼロ' },
    { id: 6, name: 'バジ絆２' },
    { id: 7, name: 'タイバニ' },
    { id: 8, name: '北斗転生' },
    { id: 9, name: 'エウレカ７' },
    { id: 10, name: 'まど２' },
    { id: 11, name: 'まど３' },
    { id: 12, name: '吉宗' },
    { id: 13, name: '番長３' }
  ]

  include ActiveHash::Associations
  has_many :sp_payments
end