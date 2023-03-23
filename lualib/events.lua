---------------------------------------------------------------------------------------------
-- EVENTS
---------------------------------------------------------------------------------------------  
local function on_init_mod(event)
    local difficulty = settings.startup["ritnmods-nlc-01"].value
    local created_items = {
        ["iron-plate"] = 8,
        ["wood"] = 1,
        ["pistol"] = 1,
        ["firearm-magazine"] = 10,
        ["stone-furnace"] = 1
    }

    if difficulty == "ultra-hardcore" then 
        pcall(function() 
            remote.call("freeplay", "set_created_items", created_items) 
        end) 
    end    
end

-------------------------------------------
script.on_init(on_init_mod)
-------------------------------------------
return {}