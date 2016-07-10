local techn 
for i = 8,13 do 
  techn = util.table.deepcopy(data.raw["technology"]["inserter-capacity-bonus-7"])
  techn.name = "inserter-capacity-bonus-"..i
  techn.prerequisites = {"inserter-capacity-bonus-"..(i-1)}
  techn.unit.count = (i * 200) - 800
  data:extend{techn}
end