start=3
local techn 
for i = start,5 do 
  techn = util.table.deepcopy(data.raw["technology"]["character-logistic-trash-slots-2"])
  techn.name = "character-logistic-trash-slots-"..i
  techn.prerequisites = {"character-logistic-trash-slots-"..(i-1)}
  techn.unit.count = techn.unit.count + ((i - start + 1) * 100)
  data:extend{techn}
end