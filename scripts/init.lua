-- Load scripts required by this pack
ScriptHost:LoadScript("scripts/settings.lua")

ScriptHost:LoadScript("scripts/access.lua")
ScriptHost:LoadScript("scripts/area.lua")

if _VERSION == "Lua 5.3" then
    ScriptHost:LoadScript("scripts/autotracking.lua")
else    
    print("Auto-tracker is unsupported by your tracker version")
	function isAutoTracking()
		return false
	end
	function isNotAutoTracking()
		return true
	end
end

-- Load items
-- Hosted items don't work without this??
Tracker:AddItems("items.json")

-- Load maps
Tracker:AddMaps("maps/maps.json")

if Tracker.ActiveVariantUID == "dungeon_shuffle_hard" then
	ScriptHost:LoadScript("scripts/shuffle.lua")
	Tracker:AddLocations("maps/hard/locations.json")
	Tracker:AddLocations("maps/dungeon_shuffle/hard.json")
end

if Tracker.ActiveVariantUID == "dungeon_shuffle" then
	ScriptHost:LoadScript("scripts/shuffle.lua")
	Tracker:AddLocations("maps/normal/locations.json")
	Tracker:AddLocations("maps/dungeon_shuffle/normal.json")
end

if Tracker.ActiveVariantUID == "hard" then
	Tracker:AddLocations("maps/hard/locations.json")
	Tracker:AddLocations("maps/hard/dungeons.json")
end 

if Tracker.ActiveVariantUID == "standard" then
	Tracker:AddLocations("maps/normal/locations.json")
	Tracker:AddLocations("maps/normal/dungeons.json")
end
