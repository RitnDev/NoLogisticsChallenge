local RitnProtoTech = require(ritnlib.defines.class.prototype.tech)
------------------------------------------------------
local difficulty = settings.startup["ritnmods-nlc-01"].value
local level = {
    normal = 1,
    hardcore = 2,
    ["ultra-hardcore"] = 3,
}
------------------------------------------------------

-- recipe remove
RitnProtoTech("automation"):removeRecipe("long-handed-inserter")
RitnProtoTech("logistics"):removeRecipe("underground-belt")
RitnProtoTech("logistics"):removeRecipe("splitter")
RitnProtoTech("logistics-2"):removeRecipe("fast-underground-belt")
RitnProtoTech("logistics-2"):removeRecipe("fast-splitter")
RitnProtoTech("logistics-2"):removeRecipe("fast-transport-belt")
RitnProtoTech("construction-robotics"):removeRecipe("roboport")

-- disable technologies
RitnProtoTech("logistics-3"):disable(true) 
RitnProtoTech("fast-inserter"):disable(true) 
RitnProtoTech("stack-inserter"):disable(true) 
RitnProtoTech("inserter-capacity-bonus-1"):disable(true) 
RitnProtoTech("inserter-capacity-bonus-2"):disable(true) 
RitnProtoTech("inserter-capacity-bonus-3"):disable(true) 
RitnProtoTech("inserter-capacity-bonus-4"):disable(true) 
RitnProtoTech("inserter-capacity-bonus-5"):disable(true) 
RitnProtoTech("inserter-capacity-bonus-6"):disable(true) 
RitnProtoTech("inserter-capacity-bonus-7"):disable(true) 
RitnProtoTech("logistic-robotics"):disable(true) 
RitnProtoTech("logistic-system"):disable(true) 
RitnProtoTech("belt-immunity-equipment"):disable(true) 



if level[difficulty] > 1 then 
    --recipe remove
    RitnProtoTech("fluid-handling"):removeRecipe("storage-tank")
    RitnProtoTech("fluid-handling"):removeRecipe("pump")
    -- disable technologies
    RitnProtoTech("fluid-wagon"):disable(true)
end

if level[difficulty] > 2 then 

    -- disable technologies   
    RitnProtoTech("mining-productivity-1"):disable(true) 
    RitnProtoTech("mining-productivity-2"):disable(true) 
    RitnProtoTech("mining-productivity-3"):disable(true) 
    RitnProtoTech("mining-productivity-4"):disable(true) 

    RitnProtoTech("uranium-processing"):disable(true) 
    RitnProtoTech("uranium-ammo"):disable(true) 
    RitnProtoTech("nuclear-power"):disable(true) 
    RitnProtoTech("kovarex-enrichment-process"):disable(true) 
    RitnProtoTech("nuclear-fuel-reprocessing"):disable(true) 
    RitnProtoTech("atomic-bomb"):disable(true) 
end