class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.integer :multiverse_id
      t.string :artist
      t.integer :cmc
      t.text :colors, array:true, default: []
      t.string :flavor
      t.string :image_url
      t.string :mana_cost
      t.string :name
      t.string :number
      t.string :original_text
      t.string :original_type
      t.string :power
      t.text :printings, array:true, default: []
      t.string :rarity      
      t.string :set
      t.string :set_name
      t.text :subtypes, array:true, default: []
      t.string :card_text
      t.string :toughness
      t.string :card_type
      t.text :types, array:true, default: []

      t.timestamps
    end
  end
end
