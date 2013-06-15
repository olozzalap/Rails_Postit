class CreateInterests < ActiveRecord::Migration
  def up
  	create_table :interests do |t|
  		t.timestamps
  		t.string :name
  	end
  end

  def down
  	drop_table :interests
  end
end
