file = File.read(Rails.root.join("db", "seed_data", "AllSets-x.json"))

filtered_cardsets = JSON.parse(file).delete_if do |setcode, setdata|
	setcode[0] == 'p'||
	setdata["name"] == "Rivals Quick Start Set" ||
	setdata["name"] == "Multiverse Gift Box" ||
	setdata["name"] == "Introductory Two-Player Set" ||
	setdata["name"] == "Deckmasters" ||
	setdata["name"] == "Coldsnap Theme Decks" ||
	setdata["name"] == "Clash Pack"
end



filtered_cardsets.each do |setcode, setdata|

	cardset = CardSet.create(code: setdata["code"], name: setdata["name"], release_date: setdata["release_date"])

	setdata["cards"].each do |card|
		if card["manaCost"]
			msplit = card["manaCost"].split("}").map {|mana| mana.gsub("{","")}
		else
			msplit = ""
		end

		if card["cmc"].to_i > 0 && card["colors"] == nil
			card["colors"] = ["Colorless"]
		end

		Card.create(
		multiverse_id: card["multiverseid"],
		# artist: card["artist"],
		cmc: card["cmc"],
		colors: card["colors"],
		flavor: card["flavor"],
		image_url: "http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=#{card['multiverseid']}&type=card",
		mana_cost: msplit,
		name: card["name"],
		# number: card["number"],
		original_text: card["originalText"],
		# original_type: card["originalType"],
		power: card["power"],
		# printings: card["printings"],
		rarity: card["rarity"],
		# subtypes: card["subtypes"],
		card_text: card["text"],
		toughness: card["toughness"],
		# card_type: card["type"],
		# types: card["types"],
		card_set_id: cardset.id
		)
	end
end
