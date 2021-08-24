turtle.refuel()
local dataSuccess, data = turtle.inspect()
--(select(2, turtle.inspect())).name == "biomesoplenty:log_0"
local dataUpSuccess, dataUp = turtle.inspectUp()
--(select(2, turtle.inspectUp())).name == "biomesoplenty:log_0"
    print(data)
    print("Block name: ", data.name)
    print("Block metadata: ", data.metadata)
   --print("Block state: ", data.state.wood_type)
 print("BlockUp name: ", dataUp.name)
 
 
    if data.name == "biomesoplenty:log_0" then
        print("fir wood found")
    end
    
 
function mineLeft()
    print("mining double tree to my left!")
    while((select(2, turtle.inspectUp())).name == "biomesoplenty:log_0")
    do
        turtle.dig()
        turtle.digUp()
        turtle.up()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()
    end
end
 
 
function mineRight()
    print("mining double tree to my right!")
    while((select(2, turtle.inspectUp())).name == "biomesoplenty:log_0")
    do
        turtle.dig()
        turtle.digUp()
        turtle.up()
        turtle.dig()
        turtle.forward()
        turtle.turnRight()
    end
end
 
 
function mineUp()
    print("mining single tree upwards!")
    while(turtle.detectUp())
    do
        turtle.digUp()
        turtle.up()
    end
end
 
 
function mineDoubleTree()
    --local dataSuccess, data = turtle.inspect()
    --local dataUpSuccess, dataUp = turtle.inspectUp()
    turtle.dig()
    turtle.forward()
    turtle.turnLeft()
    if (select(2, turtle.inspect())).name == "biomesoplenty:log_0" then
        mineLeft()
    end
    turtle.turnRight()
    turtle.turnRight()
    if (select(2, turtle.inspect())).name == "biomesoplenty:log_0" then
        mineRight()
    end
end
 
 
 
function mineTree()
 print("detectTree called")
    while(not turtle.detect())
    do
  print("turtle, attack!")
        turtle.forward()
    end
 print("got out of the loop")
    if (select(2, turtle.inspect())).name == "biomesoplenty:log_0" then
        turtle.dig()
        turtle.forward()
        if (select(2, turtle.inspect())).name == "biomesoplenty:log_0"
        then
            mineDoubleTree()
        else
            mineUp()
        end
    end
end
 
function killStraightTrees()
	while(true)
	do
		while(not turtle.detect())
		do
			print("turtle, attack!")
			turtle.forward()
		end
		if (select(2, turtle.inspect())).name == "minecraft:log"
		then
			print("found the stopping point")
			os.exit()
		end
		turtle.dig()
		turtle.forward()
		mineUp()
		while(not turtle.detectDown())
		do
			turtle.down()
		end
	end
end

function findTrees()  --this function still needs to be written
	print("hunting for trees!")
	while(not turtle.detect())
	do
		print("still hunting...")
		turtle.forward()
	end
	print("are you a tree?")
	if (select(2, turtle.inspect())).name == "biomesoplenty:log_0"
	then
		mineTree()
	else --what are all the possibilities that it could be if it's not a tree in front of it?  a flower?  a cliffside going upwards?  an enemy?  a player?  a giant hill?
		turtle.digUp()
		turtle.up()
	end	
end



--mineTree()
killStraightTrees()