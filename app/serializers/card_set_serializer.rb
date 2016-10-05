class CardSetSerializer < ActiveModel::Serializer
  # cache key: 'card_set'
  attributes :id, :name, :release_date, :code
  has_many :cards
end
