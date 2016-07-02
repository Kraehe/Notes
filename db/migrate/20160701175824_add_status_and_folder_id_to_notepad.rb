class AddStatusAndFolderIdToNotepad < ActiveRecord::Migration
  def change
    add_column :notepads, :status, :string
    add_reference :notepads, :folder, index: true, foreign_key: true
    remove_column :notepads, :imageurl, :string
  end
end
