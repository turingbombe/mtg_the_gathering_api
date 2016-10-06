class CollectionSerializer < ActiveModel::Serializer
  # cache key: 'card_set'
  attributes :id, :name, :card_ids
end