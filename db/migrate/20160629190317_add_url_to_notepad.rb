class AddUrlToNotepad < ActiveRecord::Migration
  def change
    add_column :notepads, :url, :string
  end
end
