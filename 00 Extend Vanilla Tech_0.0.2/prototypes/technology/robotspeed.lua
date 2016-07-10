start=6
local techn 
for i = start,30 do 
  techn = util.table.deepcopy(data.raw["technology"]["worker-robots-speed-3"])
  techn.name = "worker-robots-speed-"..i
  techn.prerequisites = {"worker-robots-speed-"..(i-1)}
  techn.unit.count = techn.unit.count + ((i - start + 1) * 250)
  data:extend{techn}
end