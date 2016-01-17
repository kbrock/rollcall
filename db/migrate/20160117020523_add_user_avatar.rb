class AddUserAvatar < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :nickname, :string
    add_column :users, :bio, :string
    add_column :users, :image, :string
  end
end
