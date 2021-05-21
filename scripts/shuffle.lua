-- FUNCTIONS REPRESENTING ALL DUNGEON ENTRACES AT ONCE FOR DUNGEON SHUFFLE --

-- D1 --
function d1_access_normal()
	return use_seeds() and has("emberseeds") and has("d1key")
end
function d1_access_hard()
	-- no difference --
	return d1_access_normal()
end
-- D2 --
function d2_access_normal()
	return ((has("ages") or (has("bracelet")) and 
			(has("currents") or has("bombs"))))
end
function d2_access_hard()
	-- no difference --
	return d2_access_normal()
end
-- D3 --
function d3_access_normal()
	return crescent_present()
end
function d3_access_hard()
	-- no difference --
	return d3_access_normal()
end
-- D4 --
function d4_access_normal()
	return nuun() and has("repairednut") and 
			(has("currents") or has("flute"))
end
function d4_access_hard()
	return nuun_hard() and has("repairednut") and 
			(has("currents") or has("flute"))
end
function d4_access_sequencebreak()
	return d4_access_hard()
end
-- D5 --
function d5_access_normal()
	return has("d5key") and 
			((west_ridge_present() and has("satchel") and has("pegasusseeds") and
				has("bracelet") and has("feather")) or
			(lynna() and has("mermaidsuit") and has("hook1") and
				(has("ages") or (has("feather") and has("currents") and has("bracelet")))))
end
function d5_access_hard()
	-- no difference --
	return d5_access_normal()
end
-- D6 PRESENT --
function d6_present_access_normal()
	return has("d6keyold") and
			((west_ridge_present() and has("satchel") and has("pegasusseeds") and
				has("bracelet") and has("feather")) or
			(lynna() and has("mermaidsuit") and
				(has("ages") or (has("feather") and has("currents")))))
end
function d6_present_access_hard()
	-- no difference --
	return d6_present_access_normal()
end
-- D6 PAST --
function d6_past_access_normal()
	return has("d6key") and
			((west_ridge_present() and has("satchel") and has("pegasusseeds") and
				has("bracelet") and has("feather") and 
				((has("echoes") and has("flippers")) or has("ages"))) or
			(lynna() and has("mermaidsuit") and
				(has("ages") or has("feather"))))
end
function d6_past_access_hard()
	return has("d6key") and
			((west_ridge_present() and has("satchel") and has("pegasusseeds") and
				has("bracelet") and has("feather") and 
				((has("echoes") and has("flippers")) or has("ages"))) or
			(lynna() and has("mermaidsuit") and
				(has("ages") or has("feather"))))
end
function d6_past_access_sequencebreak()
	return d6_past_access_hard()
end
-- D7 --
function d7_access_normal()
	return has("mermaidsuit") and has("ages") and
			has("hook1") and has("enterjabu")
end
function d7_access_hard()
	-- no difference --
	return d7_access_normal()
end
-- D8 --
function d8_access_normal()
	return crescent_past() and has("eyeball") and
			kill_normal() and destroy_pot() and has("bombs") and
			has("cane") and has("mermaidsuit") and has("feather")
end
function d8_access_hard()
	return crescent_past() and has("eyeball") and
			destroy_pot() and has("bombs") and
			has("mermaidsuit") and has("feather")
end
function d8_access_sequencebreak()
	return d8_access_hard()
end

-- GENERIC SHUFFLE FUNCTION --
function dX_shuffle(prefix)
	if (has(prefix .. "_d1") and d1_access_normal()) or
	(has(prefix .. "_d2") and d2_access_normal()) or
	(has(prefix .. "_d3") and d3_access_normal()) or
	(has(prefix .. "_d4") and d4_access_normal()) or
	(has(prefix .. "_d5") and d5_access_normal()) or
	(has(prefix .. "_d6_present") and d6_present_access_normal()) or
	(has(prefix .. "_d6_past") and d6_past_access_normal()) or
	(has(prefix .. "_d7") and d7_access_normal()) or
	(has(prefix .. "_d8") and d8_access_normal())  then
		return true, AccessibilityLevel.Normal
	elseif (has(prefix .. "_d6_past") and d6_past_access_sequencebreak()) or
		(has(prefix .. "_d4") and d4_access_sequencebreak()) or
		(has(prefix .. "_d8") and d8_access_sequencebreak()) then
		return true, AccessibilityLevel.SequenceBreak
	else
		return false, AccessibilityLevel.None
	end		
end
function dX_shuffle_hard(prefix)
	return (has(prefix .. "_d1") and d1_access_hard()) or
	(has(prefix .. "_d2") and d2_access_hard()) or
	(has(prefix .. "_d3") and d3_access_hard()) or
	(has(prefix .. "_d4") and d4_access_hard()) or
	(has(prefix .. "_d5") and d5_access_hard()) or
	(has(prefix .. "_d6_present") and d6_present_access_hard()) or
	(has(prefix .. "_d6_past") and d6_past_access_hard()) or
	(has(prefix .. "_d7") and d7_access_hard()) or
	(has(prefix .. "_d8") and d8_access_hard())		
end



function d1_shuffle()
	return dX_shuffle("d1")		
end
function d1_shuffle_hard()
	return dX_shuffle_hard("d1")	
end

function d2_shuffle()
	return dX_shuffle("d2")		
end
function d2_shuffle_hard()
	return dX_shuffle_hard("d2")	
end

function d3_shuffle()
	return dX_shuffle("d3")		
end
function d3_shuffle_hard()
	return dX_shuffle_hard("d3")	
end

function d4_shuffle()
	return dX_shuffle("d4")		
end
function d4_shuffle_hard()
	return dX_shuffle_hard("d4")	
end

function d5_shuffle()
	return dX_shuffle("d5")		
end
function d5_shuffle_hard()
	return dX_shuffle_hard("d5")	
end

function d6_present_shuffle()
	return dX_shuffle("d6_present")		
end
function d6_present_shuffle_hard()
	return dX_shuffle_hard("d6_present")	
end

function d6_past_shuffle()
	return dX_shuffle("d6_past")		
end
function d6_past_shuffle_hard()
	return dX_shuffle_hard("d6_past")	
end

function d7_shuffle()
	return dX_shuffle("d7")		
end
function d7_shuffle_hard()
	return dX_shuffle_hard("d7")	
end

function d8_shuffle()
	return dX_shuffle("d8")		
end
function d8_shuffle_hard()
	return dX_shuffle_hard("d8")	
end

-- DUNGEON CHECK RULES --

function entrance_assigned(suffix) 
	return (has("d1_" .. suffix) or has("d2_" .. suffix) or has("d3_" .. suffix) or has("d4_" .. suffix) or has("d5_" .. suffix) or has("d6_present_" .. suffix) or has("d6_past_" .. suffix) or has("d7_" .. suffix) or has("d8_" .. suffix))
end


function check_d1_entrance_normal()
	return d1_access_normal() and (not entrance_assigned("d1"))
end
function check_d1_entrance_hard()
	return d1_access_hard() and (not entrance_assigned("d1"))
end


function check_d2_entrance_normal()
	return d2_access_normal() and (not entrance_assigned("d2"))
end
function check_d2_entrance_hard()
	return d2_access_hard() and (not entrance_assigned("d2"))
end


function check_d3_entrance_normal()
	return d3_access_normal() and (not entrance_assigned("d3"))
end
function check_d3_entrance_hard()
	return d3_access_hard() and (not entrance_assigned("d3"))
end


function check_d4_entrance_normal()
	return d4_access_normal() and (not entrance_assigned("d4"))
end
function check_d4_entrance_hard()
	return d4_access_hard() and (not entrance_assigned("d4"))
end


function check_d5_entrance_normal()
	return d5_access_normal() and (not entrance_assigned("d5"))
end

function check_d5_entrance_hard()
	return d5_access_hard() and (not entrance_assigned("d5"))
end


function check_d6_present_entrance_normal()
	return d6_present_access_normal() and (not entrance_assigned("d6_present"))
end
function check_d6_present_entrance_hard()
	return d6_present_access_hard() and (not entrance_assigned("d6_present"))
end


function check_d6_past_entrance_normal()
	return d6_past_access_normal() and (not entrance_assigned("d6_past"))
end
function check_d6_past_entrance_hard()
	return d6_past_access_hard() and (not entrance_assigned("d6_past"))
end


function check_d7_entrance_normal()
	return d7_access_normal() and (not entrance_assigned("d7"))
end
function check_d7_entrance_hard()
	return d7_access_hard() and (not entrance_assigned("d7"))
end


function check_d8_entrance_normal()
	return d8_access_normal() and (not entrance_assigned("d8"))
end
function check_d8_entrance_hard()
	return d8_access_hard() and (not entrance_assigned("d8"))
end



local dungeon_index = {
	["d1"] = 1,
	["d2"] = 2,
	["d3"] = 3,
	["d4"] = 4,
	["d5"] = 5,
	["d6_past"] = 6,
	["d6_present"] = 7,
	["d7"] = 8,
	["d8"] = 9
}



function update_dungeon_check(dungeon, entrance)
	-- Tracker progessive dungeon entrance item
	local entrance_item = Tracker:FindObjectForCode(dungeon .. "_ent")
	-- dummy item for blue checks
	local dummy_item = Tracker:FindObjectForCode(dungeon .. "_from_" .. entrance)
	-- disable the dummy items, so it won't trigger next time
	dummy_item.Active = false
	-- Set the entrance to the right dungeon
	entrance_item.CurrentStage = dungeon_index[entrance]
	

end


function tracker_on_accessibility_updated()
	for dungeon,_ in pairs(dungeon_index) do 
		for entrance,_ in pairs(dungeon_index) do 
			if has(dungeon .. "_from_" .. entrance) then
				update_dungeon_check(dungeon, entrance)
			end
		end
	end
	
end