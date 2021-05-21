function has(item)
  return Tracker:ProviderCountForCode(item) == 1
end

-- ALL CHECKS MARKED AS "HARD" IN THE RANDOMIZER ARE NOT USED HERE

-- WEIRD LOGIC CHECKS

-- Saves time on having to check for specific flutes in spots that simply need the flute
-- Deprecated

function carpentersNotDone()
	return not(has("carpenter1") and has("carpenter2") and has("carpenter3"))
end

function any_flute()
	return has("flute")
end

function moosh()
	return has("mooshflute")
end
function ricky()
	return has("rickyflute")
end
function dimitri()
	return has("dimitriflute")
end

-- Get the number of seeds the player has
function seed_number()
	local n = 0
	
	if has("emberseeds") then
		n = n+1	
	end
	
	if has("mysteryseeds") then
		n = n+1
	end
	
	if has("scentseeds") then
		n = n+1
	end
	
	if has("galeseeds") then
		n = n+1
	end
	
	if has("pegasusseeds") then
		n = n+1
	end
	
	return n
end

-- Can the player use a punch ring?
function punch()
	return has("ring_fist") or has("ring_expert")
end

-- Can the player harvest seeds?
-- Dimitri is not globally available for all trees so he's not here
function harvest_seeds()
	return use_seeds() and
	(has("sword1") or punch())
end

-- INTERACT RULES

function use_seeds()
	return has("satchel") or
	has("shooter")
end

function destroy_bush()
	return has("sword1") or
	has("hook1") or
	(use_seeds() and has("emberseeds")) or
	(has("shooter") and has("galeseeds")) or
	has("bracelet") or
	has("bombs")
end

function destroy_bush_flute()
	return destroy_bush() or any_flute()
end

function destroy_pot()
	return has("sword2") or 
	has("bracelet") or
	has("hook1")
end 

function destroy_flower()
	return has("sword1") or 
	has("magicboomerang")
end 

function destroy_crystal()
	return has("sword1") or 
	has("bracelet") or
	has("bombs") or
	(has("satchel") and has("emberseeds")) or
	punch()
end 
		
function destroy_crystal_switch()
	return has("sword1") or 
	has("hook1") or
	has("boomerang") or
	has("shooter")
	(has("satchel") and has("emberseeds")) or
	(has("satchel") and has("mysteryseds")) or
	(has("satchel") and has("scentseeds"))
end 

function hit_lever()
	return has("sword1") or 
	has("boomerang") or
	has("shooter") or
	(has("emberseeds") and use_seeds()) or
	(has("mysteryseeds") and use_seeds()) or
	has("hook1")
end 

function hit_lever_minecart()
	return has("sword1") or 
	has("boomerang") or
	has("shooter")
end 

function hit_far_lever()
	return shoot_seeds() or
	has("magicboomerang")
end 

function hit_switch()
	return has("sword1") or 
	has("boomerang") or
	has("bombs") or
	has("shooter") or
	(has("emberseeds") and use_seeds()) or
	(has("mysteryseeds") and use_seeds()) or
	(has("scentseeds") and use_seeds()) or
	has("hook1") or
	punch()
end

function hit_far_switch()
	return has("boomerang") or
	has("shooter") or
	has("bombs") or
	has("hook1") or
	has("sword2") or
	(has("sword1") and has("ring_energy"))
end 

function max_jump()
	local j = 0

	if (has("feather") and has("satchel") and has("pegasusseeds")) then
		j = 2
	elseif has ("feather") then
		j = 1
	end
	
	return j
end 

function check_hint()
	return use_seeds() and has("mysteryseeds")
end

-- KILL RULES (order of appearance)

-- Generic damage check
function kill_normal()
	return has("sword1") or 
	(use_seeds() and has("emberseeds")) or
	(has("shooter") and has("scentseeds")) or
	(has("shooter") and has("galeseeds")) or
	has("cane") or
	has("ring_expert")
end
function kill_hard()
	return kill_normal() or
	(has("satchel") and has("scentseeds")) or
	(has("satchel") and has("galeseeds")) or
	has("bombs") or
	punch()
end

function kill_ranged()
	return (has("shooter") and has("emberseeds")) or
	(has("shooter") and has("scentseeds")) or
	(has("shooter") and has("galeseeds")) or
	(has("cane") and has("bracelet"))
end
function kill_ranged_hard()
	return kill_ranged() or
	has("bombs")
end

function push_enemy()
	return has("shield1") or
	(has("shovel") and
	(has("boomerang") or
	(has("shooter") and has("pegasusseeds"))))
end

function kill_underwater()
	return has("sword1") or 
	(has("shooter") and has("emberseeds")) or
	(has("shooter") and has("scentseeds")) or
	(has("shooter") and has("galeseeds")) or
	has("ring_expert")
end
function kill_underwater_hard()
	return kill_underwater() or
	punch()
end

function kill_gel()
	return kill_normal() or 
	has("hook1") or
	has("boomerang") or
	has("shovel")
end	
function kill_gel_hard()
	return kill_hard() or 
	has("hook1") or
	has("boomerang") or
	has("shovel")
end	
	
function kill_stalfos()
	return kill_normal()
end
function kill_stalfos_hard()
	return kill_hard()
end

function kill_zol()
	return kill_normal() or
	has("hook1")
end
function kill_zol_hard()
	return kill_hard() or
	has("hook1")
end

function kill_ghini()
	return kill_normal() or
	has("hook1")
end
function kill_ghini_hard()
	return kill_hard() or
	has("hook1")
end

function kill_giantghini()
	return has("sword1") or
	has("hook1") or
	(has("shooter") and has("scentseeds")) or
	has("ring_expert")
end
function kill_giantghini_hard()
	return kill_giantghini() or
	has("bombs") or
	(has("satchel") and has("scentseeds")) or
	punch()
end

function kill_pumpkinhead()
	return has ("bracelet") and 
	(has("sword1") or
	(has("shooter") and has("scentseeds")) or
	(use_seeds() and has("emberseeds")) or
	has("ring_expert"))
end
function kill_pumpkinhead_hard()
	return kill_pumpkinhead() or
	(has("bracelet") and
	(has("bombs") or
	(has("satchel") and has("scentseeds")) or
	punch()))
end

function kill_beetle()
	return (has("shooter") and has("galeseeds")) or
	((has("shield1") or has("shovel")) and
	(has("sword1") or 
	(use_seeds() and has("emberseeds")) or
	(has("shooter") and has("scentseeds")) or
	has("cane") or has("hook1")))
end
function kill_beetle_hard()
	return (use_seeds() and has("galeseeds")) or
	((has("shield1") or has("shovel")) and
	(has("sword1") or 
	(use_seeds() and has("emberseeds")) or
	(has("shooter") and has("scentseeds")) or
	has("cane") or
	(has("satchel") and has("scentseeds")) or
	has("bombs") or has("hook1")))
end

function kill_swoop()
	return has("sword1") or
	has("hook1") or
	(has("shooter") and has("scentseeds")) or
	has("ring_expert")
end
function kill_swoop_hard()
	return kill_swoop() or
	has("bombs") or
	(has("satchel") and has("scentseeds")) or
	punch()
end

function kill_moldorm()
	return has("sword1") or
	has("hook1") or
	(has("shooter") and has("scentseeds")) or
	has("cane") or
	has("ring_expert")
end
function kill_moldorm_hard()
	return kill_moldorm() or
	has("bombs") or
	(has("satchel") and has("scentseeds")) or
	punch()
end

-- both redundant and unused
function kill_armos()
	return has("sword1") or
	has("magicboomerang") or
	(shoot_seeds() and has("scentseeds"))
end
function kill_armos_hard()
	return kill_armos() or
	has("bombs") or
	(has("satchel") and has("scentseeds"))
end

function kill_subterror()
	return has("shovel") and
	(has("sword1") or
	has("hook1") or
	(use_seeds() and has("scentseeds")))
end
function kill_subterror_hard()
	return has("shovel") and
	(has("sword1") or
	has("hook1") or
	(use_seeds() and has("scentseeds")) or
	has("bombs"))
end
		
function kill_wizzrobe()
	return kill_normal()
end

function kill_wizzrobe_hard()
	return kill_hard()
end
