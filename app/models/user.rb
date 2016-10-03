class User < ApplicationRecord
	has_secure_password
	has_one :collection
	has_many :decks, through: :collection
end
