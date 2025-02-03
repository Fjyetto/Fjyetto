local side = false
local sfun = {[true]=turtle.turnRight,[false]=turtle.turnLeft}
for y=1,3 do
	for z=1,16 do
		for x=1,14 do
			while turtle.detect() do
				turtle.dig()
				os.sleep(0.25)
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
	if turtle.detectDown() then
		turtle.digDown()
	end
	local p,t = turtle.inspectDown()
	if p then
		if t.name = "minecraft:lava" then
			error("I don't wanna die!")
		end
	end
	turtle.down();
	turtle.turnRight();
end
