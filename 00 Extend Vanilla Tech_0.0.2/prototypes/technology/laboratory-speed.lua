local techn 
for i = 5,13 do 
  techn = util.table.deepcopy(data.raw["technology"]["research-speed-4"])
  techn.name = "research-speed-"..i
  techn.prerequisites = {"research-speed-"..(i-1)}
  techn.effects = {
        {
          type = "laboratory-speed",
          modifier = (i * 0.1) + 0.1
        }
      }
  techn.unit.count = (i * 100) + 100
  data:extend{techn}
end