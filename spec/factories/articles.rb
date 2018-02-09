FactoryBot.define do
  factory :article do
    title 'Article title'
    text 'Article text'
    user User.new

    # create factory with few comments
    factory :article_with_comments do
      # after creating article
      after :create do |article, evaluator|
        #create list with 3 comments
        create_list :comment, 3, article: article
      end
    end
  end
end
