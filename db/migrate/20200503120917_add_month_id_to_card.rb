class AddMonthIdToCard < ActiveRecord::Migration[5.2]
  def change
    add_reference :cards, :month, foreign_key: true
  end
end
