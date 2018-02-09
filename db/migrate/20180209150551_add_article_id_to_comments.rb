class AddArticleIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :comments, :article
  end
end
