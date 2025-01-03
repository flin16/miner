function locate(key)
	for i = 1, 16 do
		turtle.select(i)
		local raw = turtle.getItemDetail()
		if raw then
			local name = raw.name
			if string.find(name, key) then
				return i
			end
		end
	end
end

function refuel()
	if locate("log") then
		turtle.refuel()
	end
end

function plant()
	if locate("sapling") then
		turtle.place()
	end
end
function move_apply(move, fun)
	for i = 1, #move do
		move[i]()
		if move[i] == turtle.forward then
			fun()
		end
	end
end

function collect()
	local move = {
		turtle.turnRight,
		turtle.forward,
		turtle.turnLeft,
		turtle.forward,
		turtle.forward,
		turtle.turnLeft,
		turtle.forward,
		turtle.forward,
		turtle.turnLeft,
		turtle.forward,
		turtle.forward,
		turtle.turnLeft,
		turtle.forward,
		turtle.turnLeft,
	}
	move_apply(move, turtle.suck)
end

while true do
	refuel()
	while true do
		local exi, a = turtle.inspect()
		if exi and a.tags["minecraft:logs"] == true then
			turtle.dig()
			turtle.digUp()
			turtle.up()
		else
			break
		end
	end
	while turtle.down() do
	end
	plant()
	collect()
	_G.sleep(1)
end
