class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |post|
    	post.string :url
    	post.string :title
    	post.text :description
      post.timestamps
    end
    create_table :users do |user|
    	user.string :username
      user.timestamps
    end
  end

  def up
  end

  def down
  end
end
