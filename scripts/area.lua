-- LYNNA CITY/VILLAGE

function lynna()
	return destroy_bush_flute() or has("echoes")
end

function ambi_palace()
	return (destroy_bush_flute() or has("echoes")) and
	(destroy_bush() and has("mermaidsuit")) or
	has("ages")
end
function ambi_palace_hard()
	return ambi_palace() or
	-- guard skip
	(has("satchel") and has("scentseeds") and has("pegasusseeds"))
end

function rescue_nayru()
	return use_seeds() and has("mysteryseeds") and
	has("hook1") and (has("sword1") or punch())
end
function rescue_nayru_hard()
	return use_seeds() and has("mysteryseeds") and
	has("hook1") and (has("sword1") or punch())
end

function raft()
	return has("rope") and has("chart") and
	(destroy_bush_flute() or has("echoes"))
end

function shore()
	return has("rickygloves") or has("mermaidsuit") or
	(destroy_bush_flute() and (has("feather") or has("ages"))) or
	has("bracelet") or
	(has("currents") and (has("feather") or has("flippers") or raft()))
end

function pop_balloon()
	return has("sword1") or has("boomerang")
end

-- CRESCENT ISLAND
function crescent_present()
	return dimitri() or
	(lynna() and has("mermaidsuit")) or
	(raft() and (has("currents") or (has("shovel") and has("echoes"))))
end
		
function crescent_past()
	return raft() or
	(lynna() and has("mermaidsuit")) or
	(dimitri() and has("currents"))
end

-- SYMMETRY CITY
function nuun()
	return lynna() and
	(has("currents") or 
	(has("shooter") and has("emberseeds") and
	(has("bracelet") or has("flippers") or dimitri())))
end
function nuun_hard()
	return lynna() and
	(has("currents") or 
	(has("shooter") and has("emberseeds") and
	(has("bracelet") or has("flippers") or dimitri() or
	(has("hook1") and has("satchel") and has("scentseeds")))))
end

function patch_nut()
	return has("sword1")
end
function patch_nut_hard()
	return patch_nut() or
	(use_seeds() and has("scentseeds")) or
	has("shield1") or
	has("boomerang") or
	has("hook1") or
	has("shovel")
end

--ROLLING RIDGE
function west_ridge_present()
	return (has("feather") or has("ages")) and
	((has("hook1") and has("currents")) or --From start
	(lynna() and has("mermaidsuit") and has("currents") and max_jump() >= 2))
end

function west_ridge_past()
	return (has("bombflower") and has("hook1") and --From start
	(has("feather") or has("ages"))) or
	(west_ridge_present() and (has("ages") or
	(has("bracelet") and has ("echoes"))))--From present ridge
end

-- Clean this check up someday
function D5keys()
	if hit_switch() and (has("cane") or has("hook1")) and --key 1, dark chest
		hit_far_switch() and (has("hook1") or (has("feather") and has("cane"))) and --key 2, Any%
		has("shooter") and --key 3, 3 statues
		(destroy_pot() and has("cane") and has("feather") and 
		(has("shooter") or has("boomerang"))) and --key 4, 2 statues
		has("cane") --key 5, before somaria chest 
		then
		return true, AccessibilityLevel.Normal
	elseif D5keys_hard() then
		return true, AccessibilityLevel.SequenceBreak
	else
		return false, AccessibilityLevel.None
	end
end
function D5keys_hard()
	return hit_switch() and (has("cane") or has("hook1") or
	(kill_hard() or push_enemy())) and --key 1, dark chest
	(hit_far_switch() or has("bracelet")) and (has("hook1") or (has("feather") and has("cane"))) and --key 2, Any%
	(has("shooter") or 
	(max_jump() >= 2 and (hit_far_switch() or (has("bracelet") and has("ring_toss"))) and
	has("satchel") and (has("emberseeds") or has("scentseeds") or has("mysteryseeds")))) and --key 3, 3 statues
	(destroy_pot() and has("cane") and has("feather") and 
	(has("shooter") or has("boomerang") or (has("sword1") and has("feather")))) and --key 4, 2 statues
	has("cane") --key 5, before somaria chest
end

function ridge_base_past_east()
	return lynna() and (has("feather") or has("ages")) and has("mermaidsuit") --through the sea
end

function openD6wall()
	return has("cane") and has("bombs") and has("bracelet") and has("feather") and
	((has("shooter") and has("emberseeds")) or
	(use_seeds() and has("emberseeds") and 
	(kill_ranged() or has("feather") or
	(has("satchel") and has("scentseeds")))))
end
function openD6wall_hard()
	return has("cane") and has("bombs") and has("bracelet") and has("feather") and
	((has("shooter") and has("emberseeds")) or
	(use_seeds() and has("emberseeds") and 
	(kill_ranged_hard() or has("feather") or
	(has("satchel") and has("scentseeds")))))
end
		
function D6keys()
	return (has("fippers") or has("feather") or has("hook1")) and
	(has("shooter") or has("boomerang") or max_jump() >= 2) and --cross pits room
	(has("satchel") and has("scentseeds")) and--key 1, ropes
	(has("shooter") or has("boomerang") or (max_jump() >= 2 and
	(has("sword1") or has("hook1") or 
	(use_seeds() and has ("emberseeds")) or
	(use_seeds() and has ("scentseeds")) or
	(use_seeds() and has ("mysteryseeds"))))) and-- get to present hands room
	has("bombs") and has("hook1") and has("feather") and--key 2, dice
	openD6wall() and--get to vire spinner
	(has("feather") or has("hook1")) --key 3, spinner
end
function D6keys_hard()
	return (has("fippers") or has("feather") or has("hook1")) and
	(has("shooter") or has("boomerang") or max_jump() >= 2) and --cross pits room
	has("satchel") and has("scentseeds") and--key 1, ropes
	(has("shooter") or has("boomerang") or (max_jump() >= 2 and
	(has("sword1") or has("hook1") or has("bombs") or 
	(use_seeds() and has ("emberseeds")) or
	(use_seeds() and has ("scentseeds")) or
	(use_seeds() and has ("mysteryseeds"))))) and-- get to present hands room
	has("bombs") and has("hook1") and has("feather") and--key 2, dice
	openD6wall_hard() and--get to vire spinner
	(has("feather") or has("hook1")) --key 3, spinner
end

-- ZORA SEAS
function drainD7()
	if (has("mermaidsuit") and Tracker:ProviderCountForCode("d7sk") >= 3) or
		(has("hook2") and Tracker:ProviderCountForCode("d7sk") >= 4) then
		return true, AccessibilityLevel.Normal
	elseif has("mermaidsuit") and Tracker:ProviderCountForCode("d7sk") >= 1 then
		return true, AccessibilityLevel.SequenceBreak
	else
		return false, AccessibilityLevel.None
	end
end

function refillD7()
	return has("mermaidsuit") and drainD7() and has("hook1")
end

function floodD7()
	if has("hook2") and 
		Tracker:ProviderCountForCode("d7sk") >= 4 then
		return true, AccessibilityLevel.Normal
	elseif has("hook2") and 
		Tracker:ProviderCountForCode("d7sk") >= 2 then
		return true, AccessibilityLevel.SequenceBreak
	else
		return false, AccessibilityLevel.None
	end
	
end

-- FULL CLEAR CHECKS --

function d1clear()
	return use_seeds() and has("emberseeds") and 
	has("bracelet") and kill_ghini() and kill_pumpkinhead()
end
function d1clear_hard()
	return use_seeds() and has("emberseeds") and 
	has("bracelet") and kill_ghini_hard() and kill_pumpkinhead_hard()
end

function d2clear()
	return has("feather") and has("bombs") and 
	(has("bracelet") or has("cane")) and 
	hit_lever() and kill_normal() and
	kill_beetle() and kill_swoop()
end
function d2clear_hard()
	return has("feather") and has("bombs") and 
	(has("bracelet") or has("cane") or 
	(has("shield1") and has("hook1"))) and 
	hit_lever() and kill_hard() and
	kill_beetle_hard() and kill_swoop_hard()
end

function d3clear()
	return has("bombs") and has("shooter") and has("emberseeds") and 
	--not actually needed in all cases but if there's a key at Shadow Hag it's very much needed
	(Tracker:ProviderCountForCode("d3sk") >= 4 or max_jump() >= 2) and
	kill_moldorm() and kill_armos() and kill_subterror()
end
function d3clear_hard()
	return has("bombs") and has("shooter") and 
	(has("emberseeds") or has("mysteryseeds")) and
	--not actually needed in all cases but if there's a key at Shadow Hag it's very much needed
	(Tracker:ProviderCountForCode("d3sk") >= 4 or has("feather")) and
	kill_moldorm_hard() and kill_armos_hard() and kill_subterror_hard()
end

function d4clear()
	return has("feather") and has("bracelet") and 
	has("hook1") and has("bombs") and has("shooter") and 
	(has("sword1") or has("emberseeds") or
	has("scentseeds") or has("galeseeds")) and
	kill_normal() and (has("sword1") or has("boomerang"))
end
function d4clear_hard()
	return has("feather") and has("bracelet") and 
	has("hook1") and has("bombs") and 
	(has("shooter") and (has("emberseeds") or
	has("scentseeds") or has("galeseeds")) or
	(has("boomerang") and ((has("satchel") and has("scentseeds")) 
	or has("sword1")))) and
	kill_normal() and (has("sword1") or has("boomerang"))
end

function d5clear()
	return has("cane") and has("hook1") and 
	has("sword1") and has("feather") and has("bracelet") and 
	has("shooter") and has("emberseeds") and
	Tracker:ProviderCountForCode("d5sk") >= 5
end
function d5clear_hard()
	-- Should be the same as above, keeping it separate in case of future changes
	return has("cane") and has("hook1") and 
	has("sword1") and has("feather") and has("bracelet") and 
	has("shooter") and has("emberseeds") and
	Tracker:ProviderCountForCode("d5sk") >= 5
end

function d6clear_present()
	return has("hook1") and has("bombs") and has("feather") and
	has("d6key") and openD6wall() and has("bracelet") and 
	has("shooter") and has("emberseeds") and 
	has("satchel") and has("scentseeds") and
	(has("sword1") or has("ring_expert")) and
	Tracker:ProviderCountForCode("d6sk_present") >= 3
end
function d6clear_present_hard()
	return has("hook1") and has("bombs") and 
	has("d6key") and openD6wall() and has("bracelet") and 
	has("shooter") and has("emberseeds") and 
	has("satchel") and has("scentseeds") and
	Tracker:ProviderCountForCode("d6sk_present") >= 3
end
function d6clear_present_shuffle()
	return has("hook1") and has("bombs") and has("feather") and
	d6_past_shuffle() and openD6wall() and has("bracelet") and 
	has("shooter") and has("emberseeds") and 
	has("satchel") and has("scentseeds") and
	(has("sword1") or has("ring_expert")) and
	Tracker:ProviderCountForCode("d6sk_present") >= 3
end
function d6clear_present_shuffle_hard()
	return has("hook1") and has("bombs") and 
	d6_past_shuffle_hard() and openD6wall() and has("bracelet") and 
	has("shooter") and has("emberseeds") and 
	has("satchel") and has("scentseeds") and
	Tracker:ProviderCountForCode("d6sk_present") >= 3
end

function d6clear()
	return has("d6keyold") and d6clear_present() and has("cane") and
	has("bombs") and has("shooter") and has("emberseeds") and
	has("mermaidsuit") and has("hook1") and has("feather")
end
function d6clear_hard()
	return has("d6keyold") and d6clear_present_hard() and has("cane") and
	has("bombs") and has("shooter") and has("emberseeds") and
	has("mermaidsuit") and has("hook1") and has("feather")
end
function d6clear_shuffle()
	return d6_present_shuffle() and d6clear_present_shuffle() and has("cane") and
	has("bombs") and has("shooter") and has("emberseeds") and
	has("mermaidsuit") and has("hook1") and has("feather")
end
function d6clear_shuffle_hard()
	return d6_present_shuffle_hard() and d6clear_present_shuffle_hard() and has("cane") and
	has("bombs") and has("shooter") and has("emberseeds") and
	has("mermaidsuit") and has("hook1") and has("feather")
end

function d7clear()
	return has("hook2") and has("cane") and
	kill_underwater() and has("feather") and
	Tracker:ProviderCountForCode("d7sk") >= 7
end
function d7clear_hard()
	return has("hook2") and has("cane") and
	kill_underwater_hard() and has("feather") and
	Tracker:ProviderCountForCode("d7sk") >= 7
end

function d8clear()
	return has("bombs") and has("cane") and
	has("hook1") and has("shooter") and 
	has("emberseeds") and has("scentseeds") and
	has("powerglove") and has("feather") and has("sword1")
end
function d8clear_hard()
	-- Should be the same as above, keeping it separate in case of future changes
	return has("bombs") and has("cane") and
	has("hook1") and has("shooter") and 
	has("emberseeds") and has("scentseeds") and
	has("powerglove") and has("feather") and has("sword1")
end