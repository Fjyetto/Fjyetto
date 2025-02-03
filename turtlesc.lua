local side = false
local sfun = {[true]=turtle.turnRight,[false]=turtle.turnLeft}
for z=1,16 do
	for x=1,14 do
		while turtle.detect() do
			turtle.dig()
			os.sleep(0.3)
		end
		local l,r = turtle.forward()
		if not l and r=="Out of fuel" then
			for i = 1, 16 do -- loop through the slots
			  turtle.select(i)
			  if turtle.refuel(0) then
				turtle.refuel(1)
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
