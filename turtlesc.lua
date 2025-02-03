local side = false
local sfun = {[true]=turtle.turnRight,[false]=turtle.turnLeft}
for z=1,16 do
	for x=1,15 do
		turtle.dig()
		local l,r = turtle.forward()
		if not l and r=="Out of fuel" then
		
			for i = 1, 16 do -- loop through the slots
			  turtle.select(i)
			  if turtle.refuel(0) then
				local halfStack = math.ceil(turtle.getItemCount(i)/2)
				turtle.refuel(halfStack)
			  end
			end
			
		end
	end
	side = not side
	
	sfun[side]()
	turtle.dig()
	turtle.forward()
	sfun[side]()
	
end
