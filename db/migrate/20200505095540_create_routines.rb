class CreateRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :routines do |t|
      t.string :content, null: false
      t.integer :count, null: false, default: 0

      t.timestamps
    end
  end
end
