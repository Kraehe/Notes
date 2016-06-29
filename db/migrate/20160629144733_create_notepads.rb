class CreateNotepads < ActiveRecord::Migration
  def change
    create_table :notepads do |t|
      t.text :text

      t.timestamps null: false
    end
  end
end
