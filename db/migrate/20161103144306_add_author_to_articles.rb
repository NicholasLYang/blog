class AddAuthorToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :author, :integer
  end
end
