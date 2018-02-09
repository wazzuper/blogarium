require 'rails_helper'

describe Article do
  describe 'validations' do
    it { should have_many :comments }
    it { should belong_to :user }
  end

  describe 'associations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe '#subject' do
    it 'returns the articles title' do
      # create article object
      article = create(:article, title: 'Lorem Ipsum')
      
      # assert
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end
end
