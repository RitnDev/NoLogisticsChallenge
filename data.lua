-- récupération de la librairies RitnLib
if not ritnlib then require("__RitnLib__/defines") end
------------------------------------------------------
local RitnProtoEntity = require(ritnlib.defines.class.prototype.entity)
local RitnProtoItem = require(ritnlib.defines.class.prototype.item)
local RitnProtoOre = require(ritnlib.defines.class.prototype.ore)
------------------------------------------------------
local difficulty = settings.startup["ritnmods-nlc-01"].value
local level = {
    normal = 1,
    hardcore = 2,
    ["ultra-hardcore"] = 3,
}
----
RitnProtoEntity("inserter"):changePrototype("next_upgrade", nil)
RitnProtoEntity("transport-belt"):changePrototype("next_upgrade", nil)
----
RitnProtoItem("inserter"):changePrototype("place_result", nil)
RitnProtoItem("transport-belt"):changePrototype("place_result", nil)
----
require("prototypes/technology")
------------------------------------------------------
if level[difficulty] > 1 then 
    RitnProtoItem("pipe"):changePrototype("place_result", nil)
    RitnProtoItem("pipe-to-ground"):changePrototype("place_result", nil)
    RitnProtoItem("tank"):changePrototype("place_result", nil)
    RitnProtoItem("pump"):changePrototype("place_result", nil)
end

if level[difficulty] > 2 then 
    RitnProtoOre("uranium-ore"):remove()
end