class Article < ApplicationRecord
  has_many :comments, dependent: :delete_all
  belongs_to :user
  
  validates :title, length: { maximum: 140 }, presence: true
  validates :text, length: { maximum: 4000 }, presence: true

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
