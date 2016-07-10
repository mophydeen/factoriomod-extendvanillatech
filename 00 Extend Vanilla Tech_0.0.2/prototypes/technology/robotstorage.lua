start=4
local techn 
for i = start,10 do 
  techn = util.table.deepcopy(data.raw["technology"]["worker-robots-storage-3"])
  techn.name = "worker-robots-storage-"..i
  techn.prerequisites = {"worker-robots-storage-"..(i-1)}
  techn.unit.count = techn.unit.count + ((i - start + 1) * 200)
  data:extend{techn}
end