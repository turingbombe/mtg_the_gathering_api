class CardSerializer < ActiveModel::Serializer
  # cache key: 'card'
  attributes :id,:cmc,:colors,:flavor,:image_url,:mana_cost, :name,:original_text, :original_type, :power,:rarity, :set_name, :card_text, :toughness, :card_type, :card_set_id
end
