FactoryBot.define do
  sequence :username { |n| "user#{n}" }
  sequence :email { |n| "user#{n}@test.com" }

  factory :user do
    username
    email
    password 'secure123!@#'
    password_confirmation 'secure123!@#'
  end
end
