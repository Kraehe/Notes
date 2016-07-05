class AddUserIdToFolder < ActiveRecord::Migration
  def change
    add_column :folders, :user_id, :int
  end
end
