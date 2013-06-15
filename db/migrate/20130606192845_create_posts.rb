class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |post|
      post.string :url, :title
      post.text :description
      post.timestamps
    end
  end

  def down
    drop_table :posts
  end
end 
