class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :fb_id
      t.timestamps null: false
    end

    add_index :users, :name
    add_index :users, :fb_id
  end
end
