#****************************************************************************
#**
#**  File     :  /lua/AI/sorianlang.lua
#**  Author(s): Michael Robbins aka Sorian
#**
#**  Summary  : Language File for the Sorian AIs
#**
#****************************************************************************

AINames = {
	#Czar
    uaa0310 = {
        'Donut of Doom',
		'Chariot of Fire',
		'Champion of the Sky',
        'Aera Cura',
        'Acca Larentia',
        'Averna',
        'Bellona',
        'Carna',
        'Consus',
        'Dea Tacita',
        'Discordia',
        'Fama',
        'Fornax',
        'Furrina',
        'Hippona',
        'Invidia',
        'Juturna',
        'Levana',
        'Lucina',
        'Mellona',
        'Nerio',
        'Orbona',
        'Pax',
        'Rumina',
        'Rusina',
        'Salus',
        'Stata Mater',
        'Statina',
        'Tempestes',
        'Vacuna',
        'Veritas',
        'Vica Pota',
        'Viriplaca',
        'Volumna',
        'Voluptas', 
    },
	#Colossus
    ual0401 = {
        'Golem',
        'Cyclops',
		'Missionary',
		'Wrath',
        'Anakim',
        'Argus',
        'Atlas',
        'Bestla',
        'Arges',
        'Brontes',
        'Telemus',
        'Fir Bolg',
        'Balor',
        'Bres',
        'Tethra',
        'Pantagruel',
        'Athos',
        'Echion',
        'Goliath',
        'Gorm',
        'Jentilak',
        'Angrboda',
    },
	#Tempest
    uas0401 = {
        'Sea Cleanser',
		'Purifier',
        'Divine Hammer',
		'Divine Thunder',
		'Divine Intervention',
       	'Divine Punishment',
		'Truth',
		'Peace',
       	'Glory',
		'Devotion',
		'Faith',
       	'Purity',
    },
	#Soul Ripper
    ura0401 = {
        'Beast',
        'Ogre',
        'Orc',
        'Goblin',
        'Troll',
        'Warg',
        'Hobgoblin',
        'Gremlin',
        'Imp',
        'Meffit',
    },
	#Scathis
    url0401 = {
        'Base Pounder',
        'Aconite',
        'Adonis',
        'Bloodflower',
		'Doom Blossom',
        'Foxglove',
        'Henbane',
        'Larkspur',
        'Oleander',
        'Hemlock',
        'Toloache',
    },
	#Monkeylord
    url0402 = {
        'Gorilla King',
		'Berserker',
		'Flayer',
		'Shelob',
		'Your End',
        'Black Widow',
        'Black Katipo',
        'Red Widow',
        'Orb Weaver',
        'Spiny',
        'Funnel Web',
        'Recluse',
        'Huntsman',
        'Lynx',
        'Tarantula',
        'Wolf',
        'Six Eyes',
        'Bolas', 
    },
	#Megalith
    xrl0403 = {
        'Fiddler',
		'Soldier',
		'Hermit',
		'Spider',
		'Opilio',
		'Tanner',
    },
	#Fatboy
	uel0401 = {
        'Fort Knox',
		'Bertha',
		'Victory',
		'Firepower',
        'Centurion',
        'Conqueror',
        'Chieftain',
        'Challenger',
        'Scorpion',
        'Samaritan',
        'Samson',
        'Stormer',
        'Saracen',
        'Spartan',
        'Saxon',
        'Abrams',
        'Sheridan',
        'Paladin',
        'Bradley',
        'Stryker',
    },
	#Novax Satellite
	xea0002 = {
        'Skynet',
		'Death from Above',
		'Eye in the Sky',
		'Orbital Defense',
		'UEF Defense Net',
    },
	#Atlantis
	ues0401 = {
        'Sword of the Ocean',
		'Great White',
		'Kraken',
		'Deep One',
    },
	#Mavor
    ueb2401 = {
        'Longshot',
		'Pride of the UEF',
        'Ballista',
        'Catapult',
        'Helepolis',
        'Mangonel',
        'Petrary',
        'Trebuchet',
        'Warwolf',
        'Onager',
        'Bad Neighbor',
		'Gods Slingshot',
    },
	#Ahwassa
	xsa0402 = {
        'Chariot of Doom',
		'Wrath',
		'Vengeance',
		'Revenge',
		'Anger',
		'Fury',
		'Avenger',
    },
	#Ythotha
	xsl0401 = {
        'Bolthorn',
        'Grid',
        'Hrod',
        'Hymir',
        'Loki',
        'Ymir',
        'Kapre',
        'Talos',
        'Oni',
        'Crius',
        'Hyperion',
        'Ophion',
        'Tethys',
        'Dione',
        'Thermis',
    },
}

AIChatText = {
	nukechat = { 
		'Nuke volley headed for [target].', 
		'Launching nukes at [target].', 
		'Firing nukes at [target].', 
		'Gonna make [target]\'s base glow in the dark.',
		'I have nukes headed for [target].',
	},
	targetchat = { 
		'Switching targets to [target].', 
		'Focusing attacks on [target].', 
		'Attacking [target].', 
		'Sending units at [target].',
		'Shifting focus to [target].',
	},
	tcrespond = {
		'Copy that, targeting [target].',
		'Roger, switching targets to [target].',
		'Copy, let\'s get [target].',
		'Roger that, focusing attacks on [target].',
		'Copy, [target] is the new target.',
	},
	tcerrorally = {
		'I cannot target [target], They are an ally.',
		'Umm, [target] is our ally.',
		'[target] is an ally! Sheesh, I\'m the computer player.',
		'Since [target] is an ally attacking them would be a bad idea.',
		'Wake up! [target] is an ally. Wow!',
	},
	nuketaunt = {
		'Goodnight and goodluck.',
		'Nice knowing you.',
		'gg',
		'This is going to leave a mark.',
		'Say hello to my little friend.',
		'Mind if I set this nuke here, thanks ;).',
		'Catch!',
		'This is only going to sting for a second.',
		'I\'ve Got a little present for ya!',
	},
	t4taunt = {
		'This will all be over soon.',
		'Been nice knowing you.',
		'I hope you weren\'t getting used to being alive.',
		'Say hello to my BIG friend.',
		'Now, you guys play nice with my pet.',
		'I\'m sending a playmate for you.',
		'I\'ve Got a surprise for ya!',
	},
	ilost = {
		'GG',
		'You got lucky.',
		'Haxxors.',
		'Noooooo.',
		'Next time, your mine.',
		'I was going easy on you, noob.',
		'I\'ll get you next time.',
	},
	genericchat = {
		'Roger.',
		'Copy.',
		'Copy that.',
		'Roger that.',
		'Got it.',
		'Ok.',
		'I got it.',
		'No problem.',
	},
}