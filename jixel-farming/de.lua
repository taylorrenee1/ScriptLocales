-- Thanks to _MAX_
Loc["de"] = {
    error = {
	["cancel"] = "Abgebrochen",
	["full"] = "Deine Taschen ist zu schwer..",
	["noitem"] = "Du hast nicht die richtigen Gegenstände..",
	["noknife"] = "Du hast kein Messer!",
	["donthave"] = "Du hast nichts zu verkaufen..",
	["nope"] = "Das kannst Du jetzt nicht machen...",
	["nobucket"] = "Du brauchst einen Eimer...",
	["busy"] = "Das tust Du bereits",
	["wait"] = "Du musst warten, bis Du das wieder tun können!",
	["notinveh"] = "Du sitzt nicht in einem Traktor!",
	["nochicken"] = "Du hast kein totes Huhn!",
	["in_way"] = "Da ist etwas im Wege!",
	["minigame_fail"] = "Du bist gescheitert!",
	["notonwheat"] = "Geh zu einem Weizenfeld und sei dumm!",
	["wrongrake"] = "Falscher Harkentyp angeschlossen",
	["norake"] = "Kein Schwaderanhänger angebracht",
	["notractor"] = "Geh und miete einen Traktor vom Bauern",
	["nomoney"] = "Du brauchst $"..WheatZone.TractorRent.."um einen Traktor zu mieten",
    },
	success = {
	["gathered_milk"] = "Du hast deinen Eimer mit Milch gefüllt!",
	["defeathered"] = "Du hast erfolgreich ein Huhn entfedert!",
	["gathered"] = "Du sammelst ",
	["hired"] = "Du wurdest als Landwirt eingestellt!",
	["quit"] = "Du hast gekündigt!",
	["retrieved"] = "Du erhielst A ",
	["returned_veh"] = "Du hast den Traktor zurückgegeben!",
	["minigame_success"] = "Du warst erfolgreich!",
	["depositreturned"] = "Du hast dein Geld zurückbekommen!",
	["rentedcash"] = "Du bezahlst $"..WheatZone.TractorRent.."in Bar um einen Traktor zu mieten",
	["rentedbank"] = "Du bezahlst $"..WheatZone.TractorRent.."von deinem Bankkonto, um einen Traktor zu mieten",
	},
	notification = {
	["broke"] = "Sieht aus, als wäre das Messer zerbrochen!",
	["startfarming"] = "Auf zum Weizenfeld",
	["attachtrailer"] = "Anhänger vor der Weizenernte anhängen",
	},
    target = {
	["milk_cow"] = "Kuh melken",
	["kill_cow"] = "Kuh schlachten",
	["collect_egg"] = "Ei aufsammeln",
	["kill_chicken"] = "Huhn töten",
	["kill_pig"] = "Schwein töten",
	["defeather"] = "Huhn entfedern",
	["milkprocessor"] = "Verarbeite die Rohmilch",
	["meatprocessor"] = "Verarbeite das rohe Fleisch",
	["chickenprocessor"] = "Verarbeite das Hühnchen",
	["pestle"] = "Stößel verwenden",
	["processor"] = "Verwendung der Küchenmaschine ",
	["juicer"] = "Entsafter benutzen ",
	["getjob"] = "Farm Job Menu",
	["grab_bucket"] = "Nimm einen Eimer",
	["grab_5bucket"] = "Nimm fünf Eimer",
	["grab_10bucket"] = "Nimm zehn Eimer",
    },
    progress = {
	["progress_picking"] = "Sammele ",
	["progress_making"] = "Herstellung ",
	["progress_harvesting"] = "Weizen ernten",
	["progress_milking"] = "Kuh melken ",
	["progress_killingc"] = "Kuh töten ",
	["progress_killingp"] = "Schwein töten ",
	["progress_killingch"] = "Hühnchen töten ",
	["progress_pluck"] = "Federn rupfen",
	["progress_eggcollect"] = "Eier sammeln",
    },
	menu = {
	["header_milkprocess"] = "Milchverarbeitung",
	["header_meatprocessor"] = "Fleischverarbeitung",
	["header_processor"] = "Küchenmaschine",
	["header_juicer"] = "Entsafter",
	["header_pestle"] = "Mühle",
	["header_vegetable"] = "Gemüse",
	["header_fruit"] = "Früchte",
	["header_animal"] = "Tierische Produkte",
	["header_herbs"] = "Kräuter",
	["header_plant"] = "Pflanzen",
	["header_processed"] = "Verarbeitetes Menü",
	["header_juiced"] = "Saft",
	["close"] = "Schließen",
	["Farm_Buyer"] = "Verkaufe deine Farming-Ernte an Jol",
	["getjob"] = "Eingestellt werden",
	["clockon"] = "Einstempeln",
	["quit"] = "Job quittieren",
	["out_of_garage"] = "Fahrzeug aus der Garage",
	["garage_vehicle"] = "Traktor: ",
	["vehicle_plate"] = " Kennzeichen - ",
	["remove_vehicle"] = "Fahrzeug entfernen",
	},
	info = {
	["see_options"] = "Mehr Optionen anzeigen",
	["sell_ItemLabels"] = "Artikel verkaufen",
	["sell_all"] = "Verkaufe ALLES zu $",
	["sell_each"] = "Stück",
	["FarmBuyer"] = "Jol der Landwirt",
	["return"] = "Zurück ",
	["vehicle_map"] = "Finde deinen Traktor!"
	},
	targeticon = {

	}
}
CreateThread(function()
	for i, tree in ipairs(Zones.Trees) do
		local targetName = "pick_tree" .. i
		Loc["en"].target[targetName] = "Sammele " .. tree.ItemLabel
		Loc["en"].progress["progress_" .. targetName] = "Sammele " .. tree.ItemLabel
		Loc["en"].targeticon["tree_" .. i .. "icon"] = tree.TargetIcon
	end
	for i, plant in ipairs(Zones.Plants) do
		local targetName = "pick_plant" .. i
		Loc["en"].target[targetName] = "Pick " .. plant.ItemLabel
		Loc["en"].progress["progress_" .. targetName] = "Sammele " .. plant.ItemLabel
		Loc["en"].targeticon["plant_" .. i .. "icon"] = plant.TargetIcon
	end
end)
