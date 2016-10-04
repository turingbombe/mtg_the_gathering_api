class CardSerializer < ActiveModel::Serializer
  attributes :id, :multiverse_id, :artist,:cmc,:colors,:flavor,:image_url,:mana_cost, :name, :number, :original_text, :original_type, :power, :printings,:rarity, :set_name, :subtypes, :card_text, :toughness, :card_type, :types,:card_set_id
end