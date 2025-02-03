local side = false
local sfun = {[true]=turtle.turnRight,[false]=turtle.turnLeft}
for z=1,16 do
	for x=1,15 do
		turtle.dig()
		turtle.forward()
	end
	side = not side
	
	sfun[side]()
	turtle.dig()
	turtle.forward()
	sfun[side]()
	
end