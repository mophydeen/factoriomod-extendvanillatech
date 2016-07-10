start=7
local techdamage
local techspeed
for i = start,13 do 
  techdamage = util.table.deepcopy(data.raw["technology"]["laser-turret-damage-6"])
  techdamage.name = "laser-turret-damage-"..i
  techdamage.prerequisites = {"laser-turret-damage-"..(i-1)}
  techdamage.unit.count = techdamage.unit.count + ((i - start + 1) * 100)
  data:extend{techdamage}

  techspeed = util.table.deepcopy(data.raw["technology"]["laser-turret-speed-6"])
  techspeed.name = "laser-turret-speed-"..i
  techspeed.prerequisites = {"laser-turret-speed-"..(i-1)}
  techspeed.unit.count = techspeed.unit.count + ((i - start + 1) * 100)
  data:extend{techspeed}
end