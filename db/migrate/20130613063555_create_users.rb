class CreateUsers < ActiveRecord::Migration
  def up
  	create_table :users do |x|
  		x.string :username
  		x.timestamps
  	end
  end

  def down
  	drop_table :users
  end
end