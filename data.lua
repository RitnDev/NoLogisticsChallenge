-- récupération de la librairies RitnLib
if not ritnlib then require("__RitnLib__/defines") end
------------------------------------------------------
local RitnProtoEntity = require(ritnlib.defines.class.prototype.entity)
local RitnProtoItem = require(ritnlib.defines.class.prototype.item)
local RitnProtoOre = require(ritnlib.defines.class.prototype.ore)
------------------------------------------------------
local difficulty = settings.startup["ritnmods-nlc-01"].value
----
RitnProtoEntity("inserter"):changePrototype("next_upgrade", nil)
RitnProtoEntity("transport-belt"):changePrototype("next_upgrade", nil)
----
RitnProtoItem("inserter"):changePrototype("place_result", nil)
RitnProtoItem("transport-belt"):changePrototype("place_result", nil)
----
require("prototypes/technology")
------------------------------------------------------
if difficulty == "hardcore" then 
    RitnProtoItem("pipe"):changePrototype("place_result", nil)
elseif difficulty == "ultra-hardcore" then 
    RitnProtoItem("pipe"):changePrototype("place_result", nil)
    RitnProtoOre("uranium-ore"):remove()
end