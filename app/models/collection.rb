class Collection < ApplicationRecord
	belongs_to :user
	has_many :decks
	has_many :ownerships
	has_many :cards, through: :ownerships
end
