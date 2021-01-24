require 'rails_helper'

RSpec.describe SpPayment, type: :model do
  before do
    @sp_payment=FactoryBot.build(:sp_payment)
  end

  describe "投稿できない" do
    it "month_idが空だと投稿できない" do
      @sp_payment.month_id=nil
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Month can't be blank"
    end

    it "month_idが1だと投稿できない" do
      @sp_payment.month_id=1
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Month must be other than 1"
    end

    it "day_idが空だと投稿できない" do
      @sp_payment.day_id=nil
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Day can't be blank"
    end

    it "day_idが1だと投稿できない" do
      @sp_payment.day_id=1
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Day must be other than 1"
    end

    it "store_idが空だと投稿できない" do
      @sp_payment.store_id=nil
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Store can't be blank"
    end

    it "store_idが1だと投稿できない" do
      @sp_payment.store_id=1
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Store must be other than 1"
    end

    it "kisyu_idが空だと投稿できない" do
      @sp_payment.kisyu_id=nil
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Kisyu can't be blank"
    end

    it "kisyu_idが1だと投稿できない" do
      @sp_payment.kisyu_id=1
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Kisyu must be other than 1"
    end

    it "srate_idが空だと投稿できない" do
      @sp_payment.srate_id=nil
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Srate can't be blank"
    end

    it "srate_idが1だと投稿できない" do
      @sp_payment.srate_id=1
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Srate must be other than 1"
    end

    it "prate_idが空だと投稿できない" do
      @sp_payment.prate_id=nil
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Prate can't be blank"
    end

    it "prate_idが1だと投稿できない" do
      @sp_payment.prate_id=1
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Prate must be other than 1"
    end

    it "user_idが空だと投稿できない" do
      @sp_payment.user_id=nil
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "User must exist"
    end

    it "investment_medalが空だと投稿できない" do
      @sp_payment.investment_medal=""
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Investment medal can't be blank"
    end

    it "investment_medalが半角数字でないと投稿できない" do
      @sp_payment.investment_medal="００"
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Investment medal with a half size number"
    end

    it "investment_ballが空だと投稿できない" do
      @sp_payment.investment_ball=""
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Investment ball can't be blank"
    end

    it "investment_ballが半角数字でないと投稿できない" do
      @sp_payment.investment_ball="００"
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Investment ball with a half size number"
    end

    it "recovery_medalが空だと投稿できない" do
      @sp_payment.recovery_medal=""
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Recovery medal can't be blank"
    end

    it "recovery_medalが半角数字でないと投稿できない" do
      @sp_payment.recovery_medal="００"
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Recovery medal with a half size number"
    end

    it "recovery_ballが空だと投稿できない" do
      @sp_payment.recovery_ball=""
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Recovery ball can't be blank"
    end

    it "recovery_ballが半角数字でないと投稿できない" do
      @sp_payment.recovery_ball="００"
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Recovery ball with a half size number"
    end

    it "medalが空だと投稿できない" do
      @sp_payment.medal=""
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Medal can't be blank"
    end

    it "medalが半角数字でないと投稿できない" do
      @sp_payment.medal="００"
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Medal with a half size number"
    end

    it "ballが空だと投稿できない" do
      @sp_payment.ball=""
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Ball can't be blank"
    end

    it "ballが半角数字でないと投稿できない" do
      @sp_payment.ball="００"
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Ball with a half size number"
    end

    it "memoが空だと投稿できない" do
      @sp_payment.memo=""
      @sp_payment.valid?
      expect(@sp_payment.errors.full_messages).to include "Memo can't be blank"
    end

  end
    
end
