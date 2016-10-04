class AddCardSetIdToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :card_set_id, :integer
  end
end
