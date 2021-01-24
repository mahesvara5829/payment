FactoryBot.define do
  factory :user do
    nickname {"mori"}
    email {"0@0"}
    password {"000000"}
    password_confirmation {password}
  end
end