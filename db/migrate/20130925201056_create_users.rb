class CreateUsers < ActiveRecord::Migration
  def change
      create_table :users do |t|
        t.string :username
        t.string :password
        t.integer :note_id
        t.timestamps
      end 
  end
end
