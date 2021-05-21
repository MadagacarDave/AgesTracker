-- Configuration --------------------------------------
OOA_AUTOTRACKER_DEBUG = true
OOA_DISABLE_TREE_TRACKING = false
-------------------------------------------------------

print("")
print("Active Auto-Tracker Configuration")
print("---------------------------------------------------------------------")
if OOA_AUTOTRACKER_DEBUG then
	print("Enable Debug Logging:		", "true")
end
print("---------------------------------------------------------------------")
print("")

----------------------------------------------------------------
------------------------------DATA------------------------------
----------------------------------------------------------------

local music = {
	[  0] = "None",
	[  2] = "Zelda Theme (Fast)",
	[  3] = "Zelda Theme (Present)",
	[  4] = "Zelda Theme (Past)",
	[  5] = "Crescent Island",
	[  7] = "Palace",
	[  8] = "Nayru",
	[ 10] = "Lynna City",
	[ 11] = "Lynna Village",
	[ 12] = "Zora Village",
	[ 13] = "Essence",
	[ 14] = "House",
	[ 15] = "Fairy Fountain",
	[ 18] = "Maku Path",
	[ 19] = "Spirit's Grave",
	[ 20] = "Wing Dungeon",
	[ 21] = "Moonlit Grotto",
	[ 22] = "Skull Dungeon",
	[ 23] = "Crown Dungeon",
	[ 24] = "mermaid's Cave",
	[ 25] = "Jabu Jabu's Belly",
	[ 26] = "Ancient Tomb",
	[ 30] = "Maku Soul",
	[ 31] = "Symmetry (Ruined)",
	[ 32] = "No Return",
	[ 33] = "Threatened",
	[ 34] = "Under Water",
	[ 35] = "Pirates",
	[ 36] = "Symmetry (Present)",
	[ 37] = "Symmetry (Past)",
	[ 38] = "Tokay",
	[ 40] = "Black Tower (Inside)",
	[ 43] = "Maple",
	[ 45] = "Panic",
	[ 46] = "Boss",
	[ 48] = "Lost Woods",
	[ 54] = "Cave",
	[ 57] = "Moblins",
	[ 62] = "Gorons",
	[ 70] = "Black Tower (Outside)",
	[138] = "Veran",
	[140] = "Tragedy",
	[240] = "Unlocked",
	[255] = "Transition"
}

local dungeonsOutside = {
	[  "3:1"  ] = 4,
	[ "10:1"  ] = 5,
	[ "14:4"  ] = 7,
	[ "15:132"] = 6,
	[ "92:129"] = 9,
	["131:1"  ] = 2,
	["131:129"] = 2,
	["141:1"  ] = 1,
	["144:65" ] = 8,
	["186:1"  ] = 3
}

local dungeonsInside = {
	[ 36] = "d1",			-- 0x02, 0x08
	[ 38] = "d6_present",	-- 0x02, 0x08
	[ 68] = "d6_past",		-- 0x02, 0x88
	[ 70] = "d2",			-- 0x02, 0x88
	[ 86] = "d7",			-- 0x02, 0x48
	[102] = "d3",			-- 0x02, 0x08
	[145] = "d4",			-- 0x02, 0x08
	[170] = "d8",			-- 0x02, 0x88
	[187] = "d5"			-- 0x02, 0x08
}

local dungeons = {
	["Spirit's Grave"] = {
		["smallKey"] = {"d1sk", 0xC673},
		["currentSmallKeys"] = 0,
		["currentDoors"] = 0,
		["maxSmallKeys"] = 3,
		["bigKey"] = {"d1bk", 0xC682, 1},
		["essence"] = {"d1", 0xC6BF, 0},
		["chests"] = {
			[0xC910] = "Underground\nitem",
			[0xC913] = "Pumpkin Head\nreward",
			[0xC915] = "Moving platform\nchest",
			[0xC916] = "Double button\nchest",
			[0xC91A] = "Wide room\nchest",
			[0xC91C] = "Secret room\nchest",
			[0xC91D] = "Crossroads\nchest",
			[0xC91E] = "Ghini\ndrop",
			[0xC91F] = "West side\nitem",
			[0xC923] = "Pot\nitem",
			[0xC925] = "Terrace\nchest"
		},
		["doors"] = {
			{0xC914, 0x04},
			{0xC91D, 0x01},
			{0xC91B, 0x01}
		}
	},
	["Wing Dungeon"] = {
		["smallKey"] = {"d2sk", 0xC674},
		["currentSmallKeys"] = 0,
		["currentDoors"] = 0,
		["maxSmallKeys"] = 5,
		["bigKey"] = {"d2bk", 0xC682, 2},
		["essence"] = {"d2", 0xC6BF, 1},
		["chests"] = {
			[0xC927] = "Thwomp\nshelf",
			[0xC928] = "After\nthwomp",
			[0xC92B] = "Head Thwomp\nReward",
			[0xC92E] = "Color tiles\ndrop",
			[0xC930] = "Basement minecart\nchest",
			[0xC939] = "Moblin\ndrop",
			[0xC93E] = "Color\nroom",
			[0xC940] = "Bomb wall\nchest",
			[0xC941] = "Moblin\nchest",
			[0xC942] = "Statue puzzle\ndrop",
			[0xC945] = "Rope\nchest",
			[0xC948] = "Rope bomb wall\nchest"
		},
		["doors"] = {
			{0xC935, 0x80},
			{0xC93D, 0x01},
			{0xC93D, 0x02},
			{0xC941, 0x08},
			{0xC944, 0x02}
		}
	},
	["Moonlit Grotto"] = {
		["smallKey"] = {"d3sk", 0xC675},
		["currentSmallKeys"] = 0,
		["currentDoors"] = 0,
		["maxSmallKeys"] = 4,
		["bigKey"] = {"d3bk", 0xC682, 3},
		["essence"] = {"d3", 0xC6BF, 2},
		["chests"] = {
			[0xC94A] = "Shadow Hag\nReward",
			[0xC94B] = "Moldorm\ndrop",
			[0xC94E] = "Bridge\nchest",
			[0xC950] = "Right side\nchest",
			[0xC955] = "Torch\nchest",
			[0xC956] = "Armos\nchest",
			[0xC958] = "Mimic room\nchest",
			[0xC95C] = "Bush room\nchest",
			[0xC95E] = "Four Armos\ndrop",
			[0xC960] = "Fallen spinner\nchest",
			[0xC961] = "East statues\ndrop",
			[0xC964] = "Six blocks\ndrop",
			[0xC965] = "Pols Voice\nchest"
		},
		["doors"] = {
			{0xC94E, 0x01},
			{0xC95A, 0x01},
			{0xC95D, 0x01},
			{0xC962, 0x01}
		}
	},
	["Skull Dungeon"] = {
		["smallKey"] = {"d4sk", 0xC676},
		["currentSmallKeys"] = 0,
		["currentDoors"] = 0,
		["maxSmallKeys"] = 5,
		["bigKey"] = {"d4bk", 0xC682, 4},
		["essence"] = {"d4", 0xC6BF, 3},
		["chests"] = {
			[0xC96B] = "Eyesoar\nReward",
			[0xC96F] = "Big floor\npuzzle reward",
			[0xC974] = "Keese switch\nchest",
			[0xC97A] = "Extremely out of\nthe way chest",
			[0xC97B] = "Color tiles\ndrop",
			[0xC987] = "Small floor\npuzzle reward",
			[0xC98B] = "Zol\nchest",
			[0xC98F] = "Minecart\nchest",
			[0xC990] = "Cube\nchest",
			[0xC992] = "Moldorm switch\nchest"
		},
		["doors"] = {
			{0xC972, 0x80},
			{0xC975, 0x80},
			{0xC986, 0x80},
			{0xC98E, 0x01},
			{0xC98F, 0x01},
		}
	},
	["Crown Dungeon"] = {
		["smallKey"] = {"d5sk", 0xC677},
		["currentSmallKeys"] = 0,
		["currentDoors"] = 0,
		["maxSmallKeys"] = 5,
		["bigKey"] = {"d5bk", 0xC682, 5},
		["essence"] = {"d5", 0xC6BF, 4},
		["chests"] = {
			[0xC999] = "Red chest after\nspike room",
			[0xC99B] = "Isolated owl\npuzzle chest",
			[0xC99E] = "Twin statues\npuzzle chest",
			[0xC99F] = "West basement\nblue pegs chest",
			[0xC9A3] = "Dark room\nchest",
			[0xC9A5] = "Color Statues\npuzzle",
			[0xC9AD] = "Diamonds\nchest",
			[0xC9BA] = "Eyes\nchest",
			[0xC9BC] = "Three statues\npuzzle chest",
			[0xC9BE] = "Chest before\n the boss",
			[0xC9BF] = "Smog\nreward"
		},
		["doors"] = {
			{0xC999, 0x02},
			{0xC9B4, 0x08},
			{0xC9BC, 0x02},
			{0xC9A8, 0x80},
			{0xC9AC, 0x80}
		}
	},
	["Mermaid's Cave"] = {
		["smallKey"] = {"d6sk_present", 0xC678},
		["smallKey2"] = {"d6sk_past", 0xC67E},
		["currentSmallKeys"] = 0,
		["currentSmallKeys2"] = 0,
		["currentDoors"] = 0,
		["currentDoors2"] = 0,
		["maxSmallKeys"] = 3,
		["maxSmallKeys2"] = 3,
		["bigKey"] = {"d6bk", 0xC682, 6},
		["essence"] = {"d6", 0xC6BF, 5},
		["chests"] = {
			[0xCA13] = "@Mermaid's Cave (Present)/Chest after\nVire",
			[0xCA14] = "@Mermaid's Cave (Present)/Spinner\nchest",
			[0xCA1B] = "@Mermaid's Cave (Present)/Rope cage\nchest",
			[0xCA1C] = "@Mermaid's Cave (Present)/RNG levers\nchest",
			[0xCA1D] = "@Mermaid's Cave (Present)/Diamonds\nchest",
			[0xCA1F] = "@Mermaid's Cave (Present)/Beamos\nchest",
			[0xCA21] = "@Mermaid's Cave (Present)/Cube puzzle\nchest",
			[0xCA25] = "@Mermaid's Cave (Present)/Water channel\nchest",
			[0xCA2C] = "@Mermaid's Cave (Past)/Underwater diamonds\nchest",
			[0xCA2E] = "@Mermaid's Cave (Past)/Underwater chest\nbefore boss",
			[0xCA31] = "@Mermaid's Cave (Past)/Underwater Rope\nchest",
			[0xCA36] = "@Mermaid's Cave (Past)/Octogon\nreward",
			[0xCA3C] = "@Mermaid's Cave (Past)/North candles\nchest",
			[0xCA3F] = "@Mermaid's Cave (Past)/Color room\nchest",
			[0xCA41] = "@Mermaid's Cave (Past)/Flooded room\nchest",
			[0xCA45] = "@Mermaid's Cave (Past)/Right side\nWizzrobe chest"
		},
		["doors"] = {
			{0xCA12, 0x04},
			{0xCA20, 0x80},
			{0xCA24, 0x04},
		},
		["doors2"] = {
			{0xCA38, 0x02},
			{0xCA38, 0x80},
			{0xCA3D, 0x02}
		}
	},
	["Jabu Jabu's Belly"] = {
		["smallKey"] = {"d7sk", 0xC679},
		["currentSmallKeys"] = 0,
		["currentDoors"] = 0,
		["maxSmallKeys"] = 7,
		["bigKey"] = {"d7bk", 0xC682, 7},
		["essence"] = {"d7", 0xC6BF, 6},
		["chests"] = {
			[0xCA4B] = "Flower\nroom",
			[0xCA4C] = "Pots\nchest",
			[0xCA4D] = "Chest before\nmidboss",
			[0xCA4E] = "Chest after\nmidboss",
			[0xCA50] = "Boxed\nchest",
			[0xCA53] = "Cane + hook\npuzzle chest",
			[0xCA54] = "Crab\nchest",
			[0xCA55] = "Diamonds\ndrop",
			[0xCA5F] = "West wing\nchest",
			[0xCA62] = "Plasmarine\nreward",
			[0xCA64] = "East wing\nMoldorm chest",
			[0xCA65] = "Spikes\nchest",
			[0xCA6A] = "3F past one\nkey door",
			[0xCA6C] = "3F past all\nkey doors",
			[0xCA72] = "3F SE terrace\nchest"
		},
		["doors"] = {
			{0xCA4E, 0x80},
			{0xCA58, 0x80},
			{0xCA69, 0x02},
			{0xCA6A, 0x02},
			{0xCA6B, 0x02},
			{0xCA6B, 0x80},
			{0xCA6D, 0x02},
		}
	},
	["Ancient Tomb"] = {
		["smallKey"] = {"d8sk", 0xC67A},
		["smallKey2"] = {"slates", 0xC6C3},
		["currentSmallKeys"] = 0,
		["currentSmallKeys2"] = 0,
		["currentDoors"] = 0,
		["currentDoors2"] = 0,
		["maxSmallKeys"] = 5,
		["maxSmallKeys2"] = 4,
		["bigKey"] = {"d8bk", 0xC683, 0},
		["essence"] = {"d8", 0xC6BF, 7},
		["chests"] = {
			[0xCA78] = "Ramrock\nreward",
			[0xCA79] = "Lowest floor\ndiamonds chest",
			[0xCA7B] = "B2F Maze\nchest",
			[0xCA7C] = "NW slate\nchest",
			[0xCA7E] = "NE slate\nchest",
			[0xCA85] = "Ghini stairs\nchest",
			[0xCA91] = "Tile room\nchest",
			[0xCA92] = "SE slate\nchest",
			[0xCA94] = "SW slate\nchest",
			[0xCA97] = "B1F NW\nchest",
			[0xCA98] = "Stalfos\nitem",
			[0xCA9F] = "Sarcophagus\nchest",
			[0xCAA3] = "Blade trap\nchest",
			[0xCAA4] = "Blue pegs\nchest",
			[0xCAA6] = "Floor puzzle\nreward",
			[0xCAA7] = "Cracked blocks\nchest"
		},
		["doors"] = {
			{0xCA8E, 0x80},
			{0xCA9D, 0x01},
			{0xCAA0, 0x80},
			{0xCAA6, 0x01},
			{0xCAA9, 0x01},
		},
		["doors2"] = {
			{0xCA8A, 0x01},
			{0xCA8A, 0x02},
			{0xCA8A, 0x04},
			{0xCA8A, 0x08}
		}
	}
}

local chests = {
	[0xC709] = "@Moblin Keep/Defeat the boss",
	[0xC738] = "@Maku Tree/Save the waifu",
	[0xC739] = "@Concert Screen/Impa's chest",
	[0xC749] = "@Forest of Time/Tree chest",
	[0xC74F] = "@Fisher's Island/Underwater cave",
	[0xC763] = "@Talus Peaks/Chest before\nRestoration Wall",
	[0xC77C] = "@Poe's grave/Clock gift",
	[0xC784] = "@Fairies' Woods East/Pit chest",
	[0xC791] = "@Fairy's coast/Lonely chest",
	[0xC7A0] = "@After Jabu Jabu/Zora reward",
	[0xC7BE] = "@Moblin Keep/Lower floor chest",
	[0xC7C0] = "@Zora Village/Isolated chest",
	[0xC7CE] = "@Bomb cave/Chest",
	[0xC7D5] = "@Zora Seas South/Lonely chest",
	[0xC7EC] = "@Nuun Highlands (Ricky)/Cave chest",
	[0xC7F4] = "@Nuun Highlands (Moosh)/Cave chest",
	[0xC7FC] = "@Goron Head cave/Chest",
	[0xC7FD] = "@Goron caves (present)/Trade the Brisket\nwith the stairs Goron",
	[0xC7FF] = "@Goron caves (past)/Trade the Vase\nwith the stairs Goron",
	[0xC80E] = "@D6 entrance/Underwater chest",
	[0xC81F] = "@Goron caves (past)/Bush room\nchest",
	[0xC86D] = "@Sea of No Return/Sarcophagus chest",
	[0xC872] = "@Deku Forest North/Mystery Seeds reward",
	[0xC8AE] = "@Nayru's House/Basement item",
	[0xC8E7] = "@Shooting gallery/100 points",
	[0xC8F9] = "@Mayor's house/Pots chest",
	[0xC8FD] = "@Under Crescent Island/Labyrinth chest",
	[0xC8FF] = "@Sea of Storms/Underwater cave",
	[0xC905] = "@Maku Path/Blocks room\nsecret stairs",
	[0xC9E1] = "@Black Tower/Worker gift",
	[0xCAAC] = "@Zora Palace/Entrance\nchest",
	[0xCAB3] = "@Deku Forest North/Side cave chest",
	[0xCAB5] = "@Path to the tree/Chest",
	[0xCAB6] = "@Cheval's Grave/Cheval's invention",
	[0xCAB8] = "@Nuun Highlands (Dimitri)/Cave chest",
	[0xCAB9] = "@Rolling Ridge entrance/Stairs\nchest",
	[0xCABD] = "@Rolling Ridge entrance/Bomb the\neast wall",
	[0xCABF] = "@Cheval's Grave/Test of speed",
	[0xCAC0] = "@Rolling Ridge entrance/Surface\nstairs",
--	[0xCAC1] = "@Rolling Ridge entrance/Secret Heart Piece",
	[0xCAC7] = "@Island cave/Sarcophagus chest",
	[0xCAC8] = "@Library (present)/Free item",
	[0xCACA] = "@Crystal cave/Chest",
	[0xCACB] = "@Ambi's Palace/Right side chest",
	[0xCADD] = "@Goron caves (present)/Diamonds\nChest",
	[0xCAE0] = "@East Ridge base/Bombs chest",
	[0xCAE1] = "@East Ridge base/Diamonds chest",
	[0xCAE4] = "@Library (past)/Not so free item",
--	[0xCAE8] = "@Patch/Restore\nthe nut",
	[0xCAED] = "@Grave Under Tree/Light the torches",
	[0xCAEE] = "@Goron caves (present)/Highest floor\nchest",
	[0xCAF7] = "@Pot cave/Chest",
	[0xCAF8] = "@Pirate ship/Captain's reward"
}

local locations = {
	["@Goron caves (past)/Trade Lava Juice\nwith the bush Goron"] = {{{0xC81F, 6}}},
	["@Goron caves (present)/Big Bang\nminigame"                ] = {{{0xC83E, 6}}},
	["@Tokkey's Composition/Sick tunes"                         ] = {{{0xC88F, 6}}},
--	["@Crescent Island tree/Plant the seedling"                 ] = {{0xC8AC, 7}},
	["@Goron Elder/Blast him open"                              ] = {{{0xCAC3, 6}}},
	["@Target carts minigame/First reward"                      ] = {{{0xCAD8, 5}}},
	["@Target carts minigame/Second reward"                     ] = {{{0xCAD8, 6}}},
	["@Hidden Tokay/Old planks"                                 ] = {{{0xCAE9, 6}}},
	["@Shop/150 rupee item"                                     ] = {{{0xC69A, 7}}},
	["@South Shore/Dig up the dirt"                             ] = {{{0xC69B, 0}}},
	["@Zora Palace/Cure King Zora\nin the past"                 ] = {{{0xC69C, 0}}}, --get library key
	["@Goron caves (present)/Goron\nDancing"                    ] = {{{0xC69C, 2}}},
	["@Balloon Guy/Gift"                                        ] = {{{0xC69C, 3}}},
	["@Goron caves (past)/Dancing with\nthe Letter"             ] = {{{0xC69C, 4}}},
	["@Symmetry City (North)/Talk to the brothers"              ] = {{{0xC69D, 6}}},
	["@Ambi's Palace/Rescue Nayru"                              ] = {{{0xC6D2, 0x06}}, true},
--	["@Zora Palace/Cure King Zora\nin the past"                 ] = {{0xC6D4, 7}}, -- actual curing event
--	["@Cursed fairy/Clean the seas"                             ] = {{0xC6D6, 0}},
--	["@Zora Palace/Present King Zora\npermission"               ] = {{0xC6D6, 1}},
	["@Balloon Guy/3 seeds upgrade"                             ] = {{{0xC6D8, 6}}},
	["@Wild Tokay/Minigame reward"                              ] = {{{0xC6EA, 0x04}}, true},
	["@Wild Tokay/Minigame reward"                              ] = {{{0xC6EA, 0x02}}, true},
	["@Wild Tokay/Minigame reward"                              ] = {{{0xC6EA, 0x01}}, true}
}

local trees = {
	--present
	{"@Symmetry City tree/Seeds",      1, 0x20},
--	{"@Lynna/tree",                    1, 0x40},
	{"@Crescent Island tree/Seeds",    1, 0x80},
	{"@Zora Village tree/Seeds",       2, 0x01},

	--past
	{"@West Rolling Ridge tree/Seeds", 2, 0x02},
	{"@Ambi's Palace tree/Seeds",      2, 0x04},
	{"@East Rolling Ridge tree/Seeds", 2, 0x08},
--	{"@Lynna/tree",                    2, 0x10},
	{"@Deku Forest tree/Seeds",        2, 0x20},
	{"@Zora Village tree/Seeds",       2, 0x40},
}

----------------------------------------------------------------
------------------------------CODE------------------------------
----------------------------------------------------------------

local IS_INGAME = false
local CARPENTERS_DONE = false
local LAST_CARPENTER_STATE = 0
local RELOAD_EVERYTHING = false
local TIME_PASSED = 0
local lastTick = nil

function isAutoTracking()
	return lastTick ~= nil and (os.clock() - lastTick) < 1
end
function isNotAutoTracking()
	return lastTick == nil or (os.clock() - lastTick) >= 1
end

function autotracker_started()
	print("started tracking")
	-- Invoked when the auto-tracker is activated/connected
end

U8_READ_CACHE = {}
LOSABLE_ITEM_CACHE = {}

function InvalidateReadCaches()
	U8_READ_CACHE = {}
end

function ReadU8(segment, address)
	if (not U8_READ_CACHE[address]) then
		U8_READ_CACHE[address] = segment:ReadUInt8(address)
	end

	return U8_READ_CACHE[address]
end

function hex(n)
	return string.format("%X", n)
end

function updateGameStatus(segment)
	InvalidateReadCaches()

	local gamestate = segment:ReadUInt8(0xC21F)
	local WAS_INGAME = IS_INGAME
	IS_INGAME = gamestate > 0x32
	if (not WAS_INGAME and IS_INGAME) then
		print ("switched to ingame!")
		RELOAD_EVERYTHING = true
	end
	if (WAS_INGAME and not IS_INGAME) then
		print ("switched out of ingame!")
		--reset!
		InvalidateReadCaches()
		LOSABLE_ITEM_CACHE = {}
		CARPENTERS_DONE = false
		LAST_CARPENTER_STATE = 0
		Tracker:FindObjectForCode("carpenter1").Active = false
		Tracker:FindObjectForCode("carpenter2").Active = false
		Tracker:FindObjectForCode("carpenter3").Active = false

		print("resetting chests...")
		resetChests()
		print("resetting locs...")
		resetLocations()
		print("resetting items...")
		resetItems()
		print("resetting dungeons...")
		resetDungeons()
		print("done.")
	end
end

function checkTimer(segment)
	--C622
	lastTick = os.clock()
	local timeNow =
		segment:ReadUInt8(0xC622) +
		segment:ReadUInt8(0xC623) * 0x100 +
		segment:ReadUInt8(0xC624) * 0x10000 +
		segment:ReadUInt8(0xC625) * 0x1000000

	if(IS_INGAME and (timeNow < TIME_PASSED or timeNow - TIME_PASSED > 200)) then
		print ("save state manipulation?")
		RELOAD_EVERYTHING = true
	end
	TIME_PASSED = timeNow
end


function checkTimeControl(segment, itemRef, memLoc, offset)
	InvalidateReadCaches()

	if(ReadU8(segment, 0xCC8A) > 0) then
		print("Time Stopped")
	else
		print("Time Continued")
	end
end

mapLoc = {
	["x"] = 0,
	["y"] = 0,
	["index"] = 0,
	["meta1"] = 0,
	["meta2"] = 0
}

prevMapLoc = {
	["x"] = 0,
	["y"] = 0,
	["index"] = 0,
	["meta1"] = 0,
	["meta2"] = 0
}

function updateMapLoc(segment)
	InvalidateReadCaches()

	if (OOA_AUTOTRACKER_DEBUG and IS_INGAME) then
		--shift
		prevMapLoc.x     = mapLoc.x
		prevMapLoc.y     = mapLoc.y
		prevMapLoc.index = mapLoc.index
		prevMapLoc.meta1 = mapLoc.meta1
		prevMapLoc.meta2 = mapLoc.meta2

		--update
		mapLoc.index = segment:ReadUInt8(0xCC30) >> 0
		mapLoc.meta1 = segment:ReadUInt8(0xCC33) >> 0
		mapLoc.meta2 = segment:ReadUInt8(0xCC34) >> 0
		local mapMusic = segment:ReadUInt8(0xCC35)

		mapLoc.x = mapLoc.index%16 >> 0
		mapLoc.y = mapLoc.index//16 >> 0

		local infoString = "\nCurrent Map Coordinates: "..mapLoc.x..", "..mapLoc.y.." ["..mapLoc.index.."]  ("

		if (isInPast()) then
			infoString = infoString.."Past, "
		else
			infoString = infoString.."Present, "
		end
		if (isInside()) then
			infoString = infoString.."Inside, "
		else
			infoString = infoString.."Outside, "
		end
		if (inNuun()) then
			infoString = infoString.."inNuun, "
		else
			infoString = infoString.."not inNuun, "
		end
		if (isInDungeon()) then
			infoString = infoString.."isInDungeon, "
		else
			infoString = infoString.."not isInDungeon, "
		end
		if (isUnderWater()) then
			infoString = infoString.."Under Water)"
		else
			infoString = infoString.."Above Water)"
		end

		if (not music[mapMusic]) then error("UNKNOWN MUSIC TRACK: "..mapMusic) end

		print(infoString)
		print("Current Track: "..music[mapMusic])
		print("-----------------------")

		checkDungeonEntrance()
	end
end

function isInPast() return mapLoc.meta2 & 0x80 > 0 end
function isInPresent() return mapLoc.meta2 & 0x80 == 0 end

function isInside() return mapLoc.meta1 & 0x01 > 0 end
function isOutside() return mapLoc.meta1 & 0x01 == 0 end

function isUnderWater() return mapLoc.meta2 & 0x40 > 0 end
function isAboveWater() return mapLoc.meta2 & 0x40 == 0 end

function isInDungeon() return mapLoc.meta1 & 0x02 > 0 and mapLoc.meta2 & 0x08 > 0 end
function wasInDungeon() return prevMapLoc.meta1 & 0x02 > 0 and prevMapLoc.meta2 & 0x08 > 0 end


function inNuun()
	return
		mapLoc.meta1 == 0 and mapLoc.meta2 == 1 and
		(
			(
				mapLoc.x >= 6 and
				mapLoc.x <= 7 and
				mapLoc.y >= 1 and
				mapLoc.y <= 3
			) or (
				mapLoc.x == 5 and
				mapLoc.y == 3
			)
		)
end

function checkDungeonEntrance()
	if(isInDungeon() and not wasInDungeon()) then
		entrance = dungeonsOutside[prevMapLoc.index..":"..prevMapLoc.meta2]
		inside = dungeonsInside[mapLoc.index]
		if(entrance and inside) then
			print(inside..": "..entrance)
			entranceItem = Tracker:FindObjectForCode(inside.."_ent")
			if (entranceItem) then
				entranceItem.CurrentStage = entrance
			else
				print("no inside/entrance item for ", inside)
			end
		end
	end
end

function updateChest(segment, chestMemLocation, locRef)
	return updateLocation(segment, locRef, {{chestMemLocation, 5}}, false)
end

function updateLocation(segment, locRef, chestMemLocations, takeMask)
	--print("checking "..locRef)
	local location = Tracker:FindObjectForCode(locRef)
	if location then
		if location.Owner.ModifiedByUser then
			return
		end

		local clearedCount = 0
--@Tokkey's Composition/Sick tunes
		for i, chestLoc in ipairs(chestMemLocations) do
			local chestFlagBlock = ReadU8(segment, chestLoc[1])
			local offsetMask = chestLoc[2]
			--print(i, string.format("%X", chestLoc[1]), chestFlagBlock, chestLoc[2],  string.format("%X", 1<<chestLoc[2]),  chestFlagBlock&(1<<chestLoc[2]), "("..locRef..")")

			if (not takeMask and chestFlagBlock & (1 << offsetMask) > 0) then
				clearedCount = clearedCount + 1
			end
			if (takeMask and chestFlagBlock & offsetMask == offsetMask) then
				clearedCount = clearedCount + 1
			end
		end

		location.AvailableChestCount = location.ChestCount - clearedCount
		return location.AvailableChestCount
	else
		error("could not find location: "..locRef)
	end
end

function updateItem(segment, itemRef, memLoc, offset)
	local item = Tracker:FindObjectForCode(itemRef)
	if item then
		if item.Owner.ModifiedByUser then
			return
		end

		if(ReadU8(segment, memLoc) & (1 << offset) > 0) then
			item.Active = true
		else
			item.Active = false
		end
		return item.Active
	else
		error("could not find item: "..itemRef)
	end
end

-- items that you will lose upon delivery - checks the associated quest flag too and shows the item anyway once delivered
function updateLosableItem(segment, itemRef, memLoc, offset)
	local item = Tracker:FindObjectForCode(itemRef)
	if item then
		if item.Owner.ModifiedByUser then
			return
		end

		if (not LOSABLE_ITEM_CACHE[itemRef]) then
			LOSABLE_ITEM_CACHE[itemRef] = {}
		end
		LOSABLE_ITEM_CACHE[itemRef][memLoc..":"..offset] = (ReadU8(segment, memLoc) & (1 << offset) > 0)

		item.Active = false
		for key, itemData in pairs(LOSABLE_ITEM_CACHE[itemRef]) do
			if(itemData) then
				item.Active = true
			end
		end

		return item.Active
	else
		error("could not find item: "..itemRef)
	end
end

function updateProgItem(segment, itemRef, memLoc, stageOffsets, takeMask)
	local item = Tracker:FindObjectForCode(itemRef)
	if item then
		local stage = 0
		for i, offsetMask in ipairs(stageOffsets) do
			local stageFlags = ReadU8(segment, memLoc)
			if(not takeMask and stageFlags & (1 << offsetMask) > 0) then
				stage = i
			end
			if(takeMask and stageFlags & offsetMask == offsetMask) then
				stage = i
			end
		end
		item.CurrentStage = stage
	else
		error("could not find item: "..itemRef)
	end
end

function updateSpreadProgItem(segment, itemRef, memLocAndOffsets, takeMask, oneStageLess)
	local item = Tracker:FindObjectForCode(itemRef)
	if item then
		local stage = 0
		for i, locAndOffset in ipairs(memLocAndOffsets) do
			if(not takeMask and ReadU8(segment, locAndOffset[1]) & (1 << locAndOffset[2]) > 0) then
				stage = i
			end
			if(takeMask and ReadU8(segment, locAndOffset[1]) & locAndOffset[2] == locAndOffset[2]) then
				stage = i
			end
		end
		if (oneStageLess and stage > 0) then
			stage = stage - 1
		end
		item.CurrentStage = stage
	else
		error("could not find item: "..itemRef)
	end

end

function checkCarpenterQuestMain(segment)
	if (IS_INGAME) then
		local carpenterQuestMain = ReadU8(segment, 0xC6D4)
		local carpenter1 = Tracker:FindObjectForCode("carpenter1")
		local carpenter2 = Tracker:FindObjectForCode("carpenter2")
		local carpenter3 = Tracker:FindObjectForCode("carpenter3")

		if (carpenterQuestMain) then
			if (carpenterQuestMain & 0x20 > 0) then
				carpenter1.Active = true
				carpenter2.Active = true
				carpenter3.Active = true
				CARPENTERS_DONE = true
			end
			if(carpenterQuestMain & 0x20 == 0 and LAST_CARPENTER_STATE & 0x1C == 0) then
				carpenter1.Active = false
				carpenter2.Active = false
				carpenter3.Active = false
				CARPENTERS_DONE = false
			end
		end
	end
end

function checkCarpenterQuestCarpenters(segment)
	if (IS_INGAME) then
		local carpenter1 = Tracker:FindObjectForCode("carpenter1")
		local carpenter2 = Tracker:FindObjectForCode("carpenter2")
		local carpenter3 = Tracker:FindObjectForCode("carpenter3")
		LAST_CARPENTER_STATE = ReadU8(segment, 0xCFD1)

		if (CARPENTERS_DONE) then
			carpenter1.Active = true
			carpenter2.Active = true
			carpenter3.Active = true
		else
			carpenter1.Active = LAST_CARPENTER_STATE & 0x04 > 0
			carpenter2.Active = LAST_CARPENTER_STATE & 0x10 > 0
			carpenter3.Active = LAST_CARPENTER_STATE & 0x08 > 0
		end
	end
end

function updateDungeon(segment, dungeonName)
	local dungeonData = dungeons[dungeonName]
	if (dungeonData) then
		local chestsLeft = 0
		local keyMode = Tracker:FindObjectForCode("keyMode")

		for chestAddr, chestName in pairs(dungeonData.chests) do
			local chestRef = nil
			if (chestName:sub(1,1) == "@") then
				chestRef = chestName
			else
				chestRef = "@"..dungeonName.."/"..chestName
			end
			chestsLeft = chestsLeft + updateChest(segment, chestAddr, chestRef)
		end
		if (chestsLeft == 0) then
			dungeonData.allChestsDone = true
		else
			dungeonData.allChestsDone = false
		end

		if (keyMode.CurrentStage == 0) then
			local openedDoors = 0
			for i, doorAddress in ipairs(dungeonData.doors) do
				if (ReadU8(segment, doorAddress[1]) & doorAddress[2] > 0) then
					openedDoors = openedDoors + 1
				end
			end
			dungeonData.currentDoors = openedDoors

			local smallKeys = Tracker:FindObjectForCode(dungeonData.smallKey[1])
			smallKeys.AcquiredCount = dungeonData.currentSmallKeys + dungeonData.currentDoors

			if(dungeonData.smallKey2 and dungeonData.doors2) then
				local openedDoors2 = 0
				for i, doorAddress in ipairs(dungeonData.doors2) do
					if (ReadU8(segment, doorAddress[1]) & doorAddress[2] > 0) then
						openedDoors2 = openedDoors2 + 1
					end
				end
				dungeonData.currentDoors2 = openedDoors2

				local smallKeys2 = Tracker:FindObjectForCode(dungeonData.smallKey2[1])
				smallKeys2.AcquiredCount = dungeonData.currentSmallKeys2 + dungeonData.currentDoors2
			end

		end

	else
		print("no dungeon data for "..dungeonName)
	end
end

function updateDungeonItems(segment, dungeonName)
	local dungeonData = dungeons[dungeonName]
	local keyMode = Tracker:FindObjectForCode("keyMode")

	updateItem(segment, dungeonData.bigKey[1], dungeonData.bigKey[2], dungeonData.bigKey[3])

	local hasEssence = updateItem(segment, dungeonData.essence[1], dungeonData.essence[2], dungeonData.essence[3])
	local smallKeys = Tracker:FindObjectForCode(dungeonData.smallKey[1])
	local smallKeys2 = nil
	if(dungeonData.smallKey2) then
		smallKeys2 = Tracker:FindObjectForCode(dungeonData.smallKey2[1])
	end

	if (keyMode.CurrentStage == 0) then
		--print("INC")
		dungeonData.currentSmallKeys = ReadU8(segment, dungeonData.smallKey[2])
		if (dungeonData.currentSmallKeys + dungeonData.currentDoors >= smallKeys.AcquiredCount) then
			smallKeys.AcquiredCount = dungeonData.currentSmallKeys + dungeonData.currentDoors
		end

		if (smallKeys2) then
			dungeonData.currentSmallKeys2 = ReadU8(segment, dungeonData.smallKey2[2])
			if (dungeonData.currentSmallKeys2 + dungeonData.currentDoors2 >= smallKeys2.AcquiredCount) then
				smallKeys2.AcquiredCount = dungeonData.currentSmallKeys2 + dungeonData.currentDoors2
			end
		end
	else
		--print("LIVE")
		local keyAmount = updateSmallKey(segment, dungeonData.smallKey[1], dungeonData.smallKey[2])
		if (hasEssence and dungeonData.allChestsDone) then
			smallKeys.AcquiredCount = dungeonData.maxSmallKeys
		else
			smallKeys.AcquiredCount = dungeonData.currentSmallKeys
		end
		dungeonData.currentSmallKeys = keyAmount

		if (smallKeys2) then
			local keyAmount2 = updateSmallKey(segment, dungeonData.smallKey2[1], dungeonData.smallKey2[2])
			if (hasEssence and dungeonData.allChestsDone) then
				smallKeys2.AcquiredCount = dungeonData.maxSmallKeys2
			else
				smallKeys2.AcquiredCount = dungeonData.currentSmallKeys2
			end
			dungeonData.currentSmallKeys2 = keyAmount2
		end
	end
end

function updateSmallKey(segment, itemRef, memLoc)
	local keyAmount = ReadU8(segment, memLoc)
	local key = Tracker:FindObjectForCode(itemRef)
	if (key) then
		key.AcquiredCount = keyAmount
		return keyAmount
	else
		print("could not find key: "..itemRef)
	end
end

function resetDungeons()
	for dungeonName, dungeonData in pairs(dungeons) do
		Tracker:FindObjectForCode(dungeonData.smallKey[1]).AcquiredCount = 0
		dungeonData.currentSmallKeys = 0
		dungeonData.currentDoors = 0
		if(dungeonData.smallKey2) then
			Tracker:FindObjectForCode(dungeonData.smallKey2[1]).AcquiredCount = 0
			dungeonData.currentSmallKeys2 = 0
			dungeonData.currentDoors2 = 0
		end

		Tracker:FindObjectForCode(dungeonData.bigKey[1]).Active = false
		Tracker:FindObjectForCode(dungeonData.essence[1]).Active = false

		for chestAddr, chestName in pairs(dungeonData.chests) do
			local chestRef = nil
			if (chestName:sub(1,1) == "@") then
				chestRef = chestName
			else
				chestRef = "@"..dungeonName.."/"..chestName
			end
			local location = Tracker:FindObjectForCode(chestRef)
			location.AvailableChestCount = location.ChestCount
		end

	end

	--for i, dungeonID in pairs(dungeonsInside) do
	--	Tracker:FindObjectForCode(dungeonID.."_ent").CurrentStage = 0
	--end

end

function checkChests(loc, len)
	return function(segment)
		if (IS_INGAME) then
			for chestAddr, chestRef in pairs(chests) do
				if(chestAddr >= loc and chestAddr < loc+len) then
					updateChest(segment, chestAddr, chestRef)
				end
			end
		end
	end
end

function resetChests()
	for chestAddr, chestRef in pairs(chests) do
		local chest = Tracker:FindObjectForCode(chestRef)
		chest.AvailableChestCount = chest.ChestCount
	end
end

function checkLocations(loc, len)
	return function(segment)
		if (IS_INGAME) then
			--print("---------------------checking locations: ", loc, len)
			for locRef, locAddrAndOffset in pairs(locations) do
				if(locAddrAndOffset[1][1][1] >= loc and locAddrAndOffset[1][1][1] < loc+len) then
					--print("    updating "..locRef)
					updateLocation(segment, locRef, locAddrAndOffset[1], locAddrAndOffset[2])
				end
			end
		end
	end
end

function resetLocations()
	for locRef, locAddrAndOffset in pairs(locations) do
		--print("    resetting "..locRef)
		local location = Tracker:FindObjectForCode(locRef)
		location.AvailableChestCount = location.ChestCount
	end
end

function checkLocs1(segment)
	InvalidateReadCaches()

	if (IS_INGAME) then
		updateLosableItem(segment, "vase",    0xC7FF, 5)
		updateLosableItem(segment, "brisket", 0xC7FD, 5)
	end
end

function checkLocs2(segment)
	InvalidateReadCaches()

	if (IS_INGAME) then
		checkLocations(0xC800, 0x100)(segment)
		updateItem(segment, "crescenttree", 0xC8AC, 7)

		updateLosableItem(segment, "seedling",  0xC8AC, 7)
		updateLosableItem(segment, "zorascale", 0xC8D6, 6)
		updateLosableItem(segment, "lavajuice", 0xC81F, 6)
		updateLosableItem(segment, "goronade",  0xC83E, 6)
		updateLosableItem(segment, "eyeball",   0xC8BA, 7)



		--updateLosableItem(segment, "rickygloves", 0xC6A3, 0)

	end
end

function checkLocs3(segment)
	InvalidateReadCaches()

	if (IS_INGAME) then
		updateDungeon(segment, "Spirit's Grave")
		updateDungeon(segment, "Wing Dungeon")
		updateDungeon(segment, "Moonlit Grotto")
		updateDungeon(segment, "Skull Dungeon")
		updateDungeon(segment, "Crown Dungeon")
	end
end

function checkLocs4(segment)
	InvalidateReadCaches()

	if (IS_INGAME) then
		updateDungeon(segment, "Mermaid's Cave")
		updateDungeon(segment, "Jabu Jabu's Belly")
		updateDungeon(segment, "Ancient Tomb")

		checkLocations(0xCA00, 0x100)(segment)

		updateLosableItem(segment, "book", 0xCAE4, 6)
	end
end

function checkSeeds(segment)
	local SeedFlags = ReadU8(segment, 0xC69E)

	local emberFlag   = SeedFlags & 0x01 > 0
	local scentFlag   = SeedFlags & 0x02 > 0
	local pegasusFlag = SeedFlags & 0x04 > 0
	local galeFlag    = SeedFlags & 0x08 > 0
	local mysteryFlag = SeedFlags & 0x10 > 0

	local ember   = Tracker:FindObjectForCode("emberseeds")
	local scent   = Tracker:FindObjectForCode("scentseeds")
	local pegasus = Tracker:FindObjectForCode("pegasusseeds")
	local gale    = Tracker:FindObjectForCode("galeseeds")
	local mystery = Tracker:FindObjectForCode("mysteryseeds")

	if (not (ember and scent and pegasus and gale and mystery)) then
		error("no seed references found.")
	end

	ember.Active   = emberFlag
	scent.Active   = scentFlag
	pegasus.Active = pegasusFlag
	gale.Active    = galeFlag
	mystery.Active = mysteryFlag
end

function checkRings(segment)
	updateItem(segment, "ring_expert", 0xC617, 3)
	updateItem(segment, "ring_toss", 0xC618, 2)
	updateItem(segment, "ring_energy", 0xC61C, 1)
	updateItem(segment, "ring_peace", 0xC61D, 3)
	updateItem(segment, "ring_fist", 0xC61D, 5)
end

function hasItemInInventory(segment, itemId)
		for inventoryAddress = 0xC688, 0xC699, 1 do
			if(ReadU8(segment, inventoryAddress) == itemId) then
				return true
			end
		end
		return false
end

function trackShield(segment)
	local shield = Tracker:FindObjectForCode("shield")

	if (shield) then
		--the one thing you have to bruteforce
		if (hasItemInInventory(segment, 1)) then
			local shieldStageFlags = ReadU8(segment, 0xC6AF)
			for i, offsetMask in ipairs({0x01, 0x02, 0x03}) do
				if(shieldStageFlags & offsetMask == offsetMask) then
					stage = i
				end
			end
			shield.CurrentStage = stage

		else
			shield.CurrentStage = 0
		end
	else
		print("unable to find shield data")
	end
end

function trackRupees(segment)
	local rupees = Tracker:FindObjectForCode("rupees")
	if (rupees) then
		local rA = ReadU8(segment, 0xC6AD)
		local rB = ReadU8(segment, 0xC6AE)
		local r1    = rA & 0x0F
		local r10   = rA >> 4
		local r100  = rB & 0x0F
		local r1000 = rB >> 4

		rupees.AcquiredCount = r1 + r10*10 + r100*100 + r1000*1000
	else
		print("unable to find rupees data")
	end
end

function updateNuunKnowledge(segment)
		--0xC610 & 0x07: 3:Ricky 4:Dimitry 5:Moosh
		if(inNuun() or Tracker:FindObjectForCode("flute").CurrentStage > 1 or CARPENTERS_DONE) then
			local nuun_animal = Tracker:FindObjectForCode("nuun_ricky")
			nuun_animal.CurrentStage = (ReadU8(segment, 0xC610) & 0x07) - 2
		end
end

function checkItemsAndQuests(segment)
	InvalidateReadCaches()

	if (IS_INGAME) then
		checkRings(segment)
		checkSeeds(segment)
		checkCarpenterQuestMain(segment)

		checkLocations(0xC600, 0x100)(segment)
		updateItem(segment, "cleanseas", 0xC6D6, 0)
		updateItem(segment, "enterjabu", 0xC6D6, 1)

		updateItem(segment, "bombs",       0xC69A, 3)
		updateItem(segment, "somaria",     0xC69A, 4)
		updateItem(segment, "boomerang",   0xC69A, 6)
		updateItem(segment, "seedshooter", 0xC69B, 7)
		updateItem(segment, "shovel",      0xC69C, 5)
		updateItem(segment, "feather",     0xC69C, 7)
		updateItem(segment, "satchel",     0xC69D, 1) -- upgrade: 0xC6B4
		updateItem(segment, "gravekey",    0xC6A2, 2)
		updateItem(segment, "crownkey",    0xC6A2, 3)
		updateItem(segment, "d6key",       0xC6A2, 4)
		updateItem(segment, "d6keyold",    0xC6A2, 5)
		updateItem(segment, "librarykey",  0xC6A2, 6)
		updateItem(segment, "bombflower",  0xC6A3, 1)
		updateItem(segment, "chart",       0xC6A4, 4)
		updateItem(segment, "letter",      0xC6A5, 1)
		updateItem(segment, "emblem",      0xC6A5, 3)

		updateLosableItem(segment, "potion",      0xC69F, 7)
		updateLosableItem(segment, "rickygloves", 0xC6A3, 0)
		updateLosableItem(segment, "seedling",    0xC6A3, 5)
		updateLosableItem(segment, "zorascale",   0xC6A3, 6)
		updateLosableItem(segment, "eyeball",     0xC6A3, 7)
		updateLosableItem(segment, "powder",      0xC6A4, 1)
		updateLosableItem(segment, "rope",        0xC6A4, 2)
		updateLosableItem(segment, "book",        0xC6A4, 5)
		updateLosableItem(segment, "lavajuice",   0xC6A5, 2)
		updateLosableItem(segment, "vase",        0xC6A5, 4)
		updateLosableItem(segment, "goronade",    0xC6A5, 5)
		updateLosableItem(segment, "brisket",     0xC6A5, 6)
		updateLosableItem(segment, "rickygloves", 0xC646, 5)
		updateLosableItem(segment, "rickygloves", 0xC646, 6)
		updateLosableItem(segment, "rope",        0xC6D2, 5)
		updateLosableItem(segment, "potion",      0xC6D4, 7)
		updateLosableItem(segment, "powder",      0xC6D6, 0)


		for dungeonName in pairs(dungeons) do updateDungeonItems(segment, dungeonName) end

		updateProgItem(segment, "harp",       0xC69E, {5, 6, 7})
		updateProgItem(segment, "herosword",  0xC6B2, {0x01, 0x02, 0x03}, true)
		updateProgItem(segment, "switchhook", 0xC6B6, {0, 1})
		updateProgItem(segment, "bracelet",   0xC6B8, {0, 1})

		trackShield(segment)
		trackRupees(segment)
		updateNuunKnowledge(segment)

		updateSpreadProgItem(segment, "tuninut",    {{0xC6A3, 4}, {0xC6C2, 1}})
		updateSpreadProgItem(segment, "flute",      {{0xC69B, 0x40}, {0xC6B5, 0x01}, {0xC6B5, 0x02}, {0xC6B5, 0x03}}, true)
		updateSpreadProgItem(segment, "flippers",   {{0xC69F, 6}, {0xC6A3, 2}})

	end
end

function resetItems()
	--if (not OOA_DISABLE_TREE_TRACKING) then
	--	for i, treeData in pairs(trees) do
	--		Tracker:FindObjectForCode(treeData[1]).AvailableChestCount = 1
	--	end
	--end

	for i, itemName in pairs({
		"cleanseas","enterjabu","bombs","somaria","boomerang","seedshooter","shovel","feather","satchel","gravekey","crownkey",
		"d6key","d6keyold","librarykey","bombflower","chart","letter","emblem","rope","rickygloves","seedling","zorascale","book",
		"lavajuice","vase","goronade","brisket","powder","eyeball",
		"ring_expert","ring_toss","ring_energy","ring_peace","ring_fist",
		"emberseeds","scentseeds","pegasusseeds","galeseeds","mysteryseeds"
	}) do
		Tracker:FindObjectForCode(itemName).Active = false
	end

	for i, progItemName in pairs({"harp","herosword", "shield","switchhook","bracelet","tuninut","flute","flippers"}) do
		Tracker:FindObjectForCode(progItemName).CurrentStage = 0
	end

	Tracker:FindObjectForCode("rupees").AcquiredCount = 0
end

if (OOA_DISABLE_TREE_TRACKING) then
	for i, treeData in pairs(trees) do
		Tracker:FindObjectForCode(treeData[1]).AvailableChestCount = 0
	end
end

function updateTreeState(segment)
	InvalidateReadCaches()
	if (IS_INGAME) then
		local treeFlags = {ReadU8(segment, 0xCC4D), ReadU8(segment, 0xCC4E)}
		for i, treeData in pairs(trees) do
			local tree = Tracker:FindObjectForCode(treeData[1])
			if (treeFlags[treeData[2]] & treeData[3] == 0 and tree.AvailableChestCount > 0) then tree.AvailableChestCount = 0 end
		end
	end
end

function checkAllChests(segment)
	checkChests(0xC700, 0x400)(segment)
end
function checkAllLocations(segment)
	checkLocs1(segment)
	checkLocs2(segment)
	checkLocs3(segment)
	checkLocs4(segment)
	checkLocations(0xC700, 0x400)(segment)
end

function checkReset(segment)
	if(RELOAD_EVERYTHING and IS_INGAME) then
		print("reloading everything...")
		RELOAD_EVERYTHING = false
		InvalidateReadCaches()
		LOSABLE_ITEM_CACHE = {}
		checkItemsAndQuests(segment)
		checkAllChests(segment)
		checkAllLocations(segment)
		updateDungeon(segment, "Spirit's Grave")
		updateDungeon(segment, "Wing Dungeon")
		updateDungeon(segment, "Moonlit Grotto")
		updateDungeon(segment, "Skull Dungeon")
		updateDungeon(segment, "Crown Dungeon")
		updateDungeon(segment, "Mermaid's Cave")
		updateDungeon(segment, "Jabu Jabu's Belly")
		updateDungeon(segment, "Ancient Tomb")
		--Tracker:FindObjectForCode("@Symmetry City tree/Seeds").AvailableChestCount = 1
		--Tracker:FindObjectForCode("@Crescent Island tree/Seeds").AvailableChestCount = 1
		--Tracker:FindObjectForCode("@Zora Village tree/Seeds").AvailableChestCount = 1
		--Tracker:FindObjectForCode("@West Rolling Ridge tree/Seeds").AvailableChestCount = 1
		--Tracker:FindObjectForCode("@Ambi's Palace tree/Seeds").AvailableChestCount = 1
		--Tracker:FindObjectForCode("@East Rolling Ridge tree/Seeds").AvailableChestCount = 1
		--Tracker:FindObjectForCode("@Deku Forest tree/Seeds").AvailableChestCount = 1
	end
end

ScriptHost:AddMemoryWatch("OoA In-Game status",        0xC21F, 0x01, updateGameStatus, 250)
ScriptHost:AddMemoryWatch("OoA Map status",            0xCC30, 0x06, updateMapLoc)


ScriptHost:AddMemoryWatch("Timer check",               0xC622, 0x04, checkTimer, 250)
ScriptHost:AddMemoryWatch("Full reset check",          0xC600, 0x500, checkReset)
ScriptHost:AddMemoryWatch("OoA Item and Quest Status", 0xC600, 0x100, checkItemsAndQuests)
--ScriptHost:AddMemoryWatch("OoA Chests Status",       0xC700, 0x400, checkChests)
ScriptHost:AddMemoryWatch("OoA Chests 1 Status",       0xC700, 0x100, checkChests(0xC700, 0x100))
ScriptHost:AddMemoryWatch("OoA Locs 1 Status",         0xC700, 0x100, checkLocs1)
ScriptHost:AddMemoryWatch("OoA Chests 2 Status",       0xC800, 0x100, checkChests(0xC800, 0x100))
ScriptHost:AddMemoryWatch("OoA Locs 2 Status",         0xC800, 0x100, checkLocs2)
ScriptHost:AddMemoryWatch("OoA Chests 3 Status",       0xC900, 0x100, checkChests(0xC900, 0x100))
ScriptHost:AddMemoryWatch("OoA Locs 3 Status",         0xC900, 0x100, checkLocs3)
ScriptHost:AddMemoryWatch("OoA Chests 4 Status",       0xCA00, 0x100, checkChests(0xCA00, 0x100))
ScriptHost:AddMemoryWatch("OoA Locs 4 Status",         0xCA00, 0x100, checkLocs4)
ScriptHost:AddMemoryWatch("OoA Tree status",           0xCC4D, 0x02, updateTreeState)
ScriptHost:AddMemoryWatch("OoA Time Status",           0xCC8A, 0x01, checkTimeControl)
ScriptHost:AddMemoryWatch("OoA Carpenter Status",      0xCFD1, 0x01, checkCarpenterQuestCarpenters)


--[[
NOTES:

System Bus addresses:


interesting offsets:
- 0xC000 <- we use this one exclusively
- 0xE000

Memory Locations:
map coords: 0xCC30
frame timer?: 0xCC00
timer: 0xC622, 4 bytes
music: 0xCC35

             0xCC33 0xCC34
presuw:   0000_0100 0100_0000
presow:   0000_0000 0000_0001
presrm:   0000_0001 0000_0100
D6UWroom: 0000_0001 0100_0100

pastuw:   0000_0100 1100_0001
pastow:   0000_0000 1000_0001
pastrm:   0000_0001 1000_0100
pastug:   0000_0011 1011_0000
UWroom:   0000_0001 1100_0100


ow:     0000_0000 0000_000?
past:   0000_0000 1000_000?
inside: 0000_0001 0000_0000
uw:     0000_0100 0100_000?


Misc

	offsets
		_7___6___5___4__3___2___1___0_
		128	64	32	16	8	4	2	1

	Rupees (obscure)
		  bits	__7____6____5____4____3____2____1____0_
		0xC6AD (  80|  40|  20|  10|   8|   4|   2|  1)
		0xC6AE (8000|4000|2000|1000| 800| 400| 200|100)

	Hearts: C6AA

	Item Slots
		0xC688 B Button
		0xC689 A Button
		0xC68A - 0xC699 Slots

	Item IDs
		0x03 Bombs
		0x05 Sword
		0x0A swhook
		0x11 harp
		0x16 bracelet
		0x17 feather
		0x19 satchel
		0x0E flute

	tree state (0xCC4E)
		0b00001000 Past, Rolling Ridge East
		0b00010000 Past, South Shore


Items

	Harp:  0xC69C(0000_0000 > 0000_0010)
	Harp Songs: 0xC69E(0000_0000 > 0010_0000 > 0110_0000 > 1110_0000)

	Bombs: 0xC69A, 3; C6B0 count
	Gasha: 0xC6BE


Seeds

	C6B9: ember seed count
	C6BA: scent seed count
	C6BB: pegasus seed count
	C6BC: gale seed count
	C6BD: mystery seed count

Trees:
	[0:ember 1:scent 2:pegasus 3:gale 4:mystery]

	0x0499A1 Symmetry
	0x0499B8 Crescent
	0x049E62 Lynna
	0x049E6F zora
	0x049E4D rolling west
	0x049E5B ambi
	0x049F46 rolling east
	0x04A101 deku


Map unlock:
	0b00010000 checkmark

	0xC7YX: present
	0xC8YX: past

	0xC924: D1 knowledge
	0xC946: D2 knowledge
	0xC966: D3 knowledge
	0xC991: D4 knowledge
	0xC9BB: D5 knowledge
	0xCA26: D6 present knowledge
	0xCA44: D6 past knowledge
	0xCA56: D7 knowledge
	0xCAAA: D8 knowledge
]]--