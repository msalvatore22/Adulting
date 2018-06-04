class AddColumnToPostsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :post_pic, :string
  end
end
