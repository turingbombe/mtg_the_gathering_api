require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
file = File.read(Rails.root.join("db", "seed_data", "AllSets-x.json"))
cardsets = JSON.parse(file)
cardsets.each do |setcode, setdata|
	cardset = CardSet.create(code: setdata["code"], name: setdata["name"], release_date: setdata["release_date"])
	setdata["cards"].each do |card|
		Card.create(
		multiverse_id: card["multiverseid"],
		# artist: card["artist"],
		cmc: card["cmc"],
		# colors: card["colors"],
		flavor: card["flavor"],
		image_url: "http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=#{card['multiverseid']}&type=card",
		mana_cost: card["manaCost"],
		name: card["name"],
		# number: card["number"],
		# original_text: card["originalText"],
		# original_type: card["originalType"],
		power: card["power"],
		# printings: card["printings"],
		rarity: card["rarity"],
		# subtypes: card["subtypes"],
		# card_text: card["text"],
		toughness: card["toughness"],
		# card_type: card["type"],
		# types: card["types"],
		card_set_id: cardset.id
		)
	end
end
