class CreateCardSets < ActiveRecord::Migration[5.0]
  def change
    create_table :card_sets do |t|
      t.string :code
      t.string :name
      t.string :release_date

      t.timestamps
    end
  end
end
