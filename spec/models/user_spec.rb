require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe "ユーザー新規登録" do
    context "新規登録に失敗する" do
      it "nicknameが空だと登録できない" do
        @user.nickname=""
        @user.valid?
        expect(@user.errors.full_messages).to include "Nickname can't be blank"
      end

      it "emailが空だと登録できない" do
        @user.email=""
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end

      it "passwordが空だと登録できない" do
        @user.password=nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end

      it "passwordが5桁以下だと登録できない" do
        @user.password="00000"
        @user.valid?
        expect(@user.errors.full_messages).to include "Password is too short (minimum is 6 characters)"
      end

      it "passwordの入力は2回とも同じでないと登録できない" do
        @user.password="000000"
        @user.password_confirmation="0000000"
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
    end

    context "新規登録に成功する" do
      it "全て正しく入力すれば登録できる" do
        expect(@user).to be_valid
      end
    end
  end
end