class AddTitleToRoutines < ActiveRecord::Migration[5.2]
  def change
    add_column :routines, :title, :string, null: false
  end
end
