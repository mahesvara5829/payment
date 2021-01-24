class SpPayment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :store
  belongs_to :kisyu
  belongs_to :month
  belongs_to :day
  belongs_to :srate
  belongs_to :prate




  with_options presence: true do
    validates :month_id,:day_id,:store_id,:kisyu_id,:prate_id,:srate_id, numericality: { other_than: 1 }
    validates :investment_medal, format: { with: /\A[0-9]+\z/ , message: "with a half size number"}
    validates :investment_ball, format: { with: /\A[0-9]+\z/ , message: "with a half size number"}
    validates :recovery_medal, format: { with: /\A[0-9]+\z/ , message: "with a half size number"}
    validates :recovery_ball, format: { with: /\A[0-9]+\z/ , message: "with a half size number"}
    validates :medal, format: { with: /\A[-]?[0-9]+(\.[0-9]+)?\z/ , message: "with a half size number"}
    validates :ball, format: { with: /\A[-]?[0-9]+(\.[0-9]+)?\z/ , message: "with a half size number"}
    validates :memo
  end

  belongs_to :user
end
