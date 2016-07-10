start=7
local techn 
for i = start,10 do 
  techn = util.table.deepcopy(data.raw["technology"]["character-logistic-slots-6"])
  techn.name = "character-logistic-slots-"..i
  techn.prerequisites = {"character-logistic-slots-"..(i-1)}
  techn.unit.count = techn.unit.count + ((i - start + 1) * 500)
  data:extend{techn}
end