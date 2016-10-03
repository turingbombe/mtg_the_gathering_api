class Card < ApplicationRecord
	has_many :deck_cards
	has_many :decks, through: :deck_cards
	has_many :ownerships
	has_many :collections, through: :ownerships

end
