class AddImageUrlToNotepad < ActiveRecord::Migration
  def change
    add_column :notepads, :imageurl, :string
  end
end
