class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :icon, :string
    add_column :users, :oauth_token, :string
    add_column :users, :oauth_expires_at, :time

    add_index :users, :email
    add_index :users, :oauth_expires_at
  end
end
