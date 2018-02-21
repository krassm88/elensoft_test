FactoryBot.define do
  factory :account do
    login { FFaker::Lorem.word }
    password 'qwerty123'
    password_confirmation 'qwerty123'
  end
end
