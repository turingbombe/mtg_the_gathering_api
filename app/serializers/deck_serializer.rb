class DeckSerializer < ActiveModel::Serializer
  attributes :id, :name,:description, :card_ids, :collection_id
end