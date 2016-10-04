class CardSetSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_date, :code
  has_many :cards
end