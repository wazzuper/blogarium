FactoryBot.define do
  factory :comment do
    sequence :author { |n| "author #{n}" }
    sequence :body { |n| "comment body #{n}" }
  end
end
