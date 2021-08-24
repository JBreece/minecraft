turtle.refuel()
--while( <something>)
--do
	turtle.up()
	for i = 4,1,-1
	do
		turtle.select(i+1)
		for i = 50,1,-1
		do
			turtle.placeDown()
			turtle.forward()
		end
		turtle.turnRight()
	end

--end