class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.string :name
      t.string :image_url
      t.text :desc
      t.boolean :visible

      t.timestamps null: false
    end
  end
end
