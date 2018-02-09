class AddUserIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :articles, :user
  end
end
