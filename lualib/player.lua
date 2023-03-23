local RitnEvent = require(ritnlib.defines.class.luaClass.event)
local RitnRecipe = require(ritnlib.defines.class.luaClass.recipe)


-- Quand le joueur est créer :
local function on_player_created(e)
      local rPlayer = RitnEvent(e):getPlayer()
      local difficulty = settings.startup["ritnmods-nlc-01"].value
      
      local recipes = rPlayer.force.recipes

      --Enlève les recettes de départ définit de base.
      RitnRecipe(recipes["burner-inserter"]):setEnabled(false) 

      if difficulty == "hardcore" then 
            RitnRecipe(recipes["pipe-to-ground"]):setEnabled(false)  
      elseif difficulty == "ultra-hardcore" then 
            RitnRecipe(recipes["pipe-to-ground"]):setEnabled(false) 
            RitnRecipe(recipes["burner-mining-drill"]):setEnabled(false)
            RitnRecipe(recipes["electric-mining-drill"]):setEnabled(false) 
      end
end


-----------------------------
local module = {events = {}}
module.events[defines.events.on_player_created] = on_player_created
-----------------------------
return module