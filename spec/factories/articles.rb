FactoryBot.define do
  factory :article do
    title 'Article title'
    text 'Article text'
    user User.new
  end
end
