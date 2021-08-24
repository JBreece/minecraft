turtle.refuel()
--while( <something>)
--do
	turtle.up()
	for i = 4,1,-1
	do
		turtle.select(i+1)
		for i = 48,1,-1
		do
			turtle.placeDown()
			turtle.forward()
		end
		turtle.turnRight()
		turtle.forward()
		turtle.turnRight()
	end
	turtle.turnRight()
	turtle.forward()
	turtle.forward()
	turtle.turnLeft()
	for i = 2,1,-1
	do
		turtle.select(i+1)
		for i = 48,1,-1
		do
			turtle.placeDown()
			turtle.forward()
		end
		turtle.turnRight()
		turtle.forward()
		turtle.turnRight()
	end

--end