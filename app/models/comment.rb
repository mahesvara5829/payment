class Comment < ApplicationRecord

belongs_to :user
belongs_to :sp_payment

validates :text,presence: true

end
