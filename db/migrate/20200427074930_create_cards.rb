class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
