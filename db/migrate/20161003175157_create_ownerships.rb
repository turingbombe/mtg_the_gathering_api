class CreateOwnerships < ActiveRecord::Migration[5.0]
  def change
    create_table :ownerships do |t|
      t.integer :collection_id
      t.integer :card_id

      t.timestamps
    end
  end
end
