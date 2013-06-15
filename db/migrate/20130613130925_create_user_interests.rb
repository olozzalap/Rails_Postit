class CreateUserInterests < ActiveRecord::Migration
  def up
  	create_table :user_interests do |t|
  		t.timestamps
  		t.integer :user_id, :interest_id
  	end
  end

  def down
  	drop_table :user_interests
  end
end
