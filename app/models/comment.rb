class Comment < ApplicationRecord
  belongs_to :article

  validates :body, length: { maximum: 1500 }, presence: true
end
