require 'rails_helper'

describe Article do
  describe 'associations' do
    it { should have_many(:comments).dependent(:destroy) }
    it { should belong_to :user }
  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
    it { should validate_length_of(:title).is_at_most(140) }
    it { should validate_length_of(:text).is_at_most(4000) }
  end

  describe '#subject' do
    it 'returns the articles title' do
      # create article object
      article = create(:article, title: 'Lorem Ipsum')
      
      # assert
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end

  describe '#last_comment' do
    it 'returns the last comment' do
      article = create(:article_with_comments)

      #check comment.body is equal to 3
      expect(article.last_comment.body).to eq 'comment body 3'
    end
  end
end
