class Article < ApplicationRecord
  has_many :comments
  belongs_to :user
  
  validates :title, :text, presence: true

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
