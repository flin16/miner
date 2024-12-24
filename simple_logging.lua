while true do
	turtle.refuel()
	_G.sleep(600)
	while true do
		_, a = turtle.inspect()
		if a.tags["minecraft:logs"] == true then
			turtle.dig()
			turtle.up()
		else
			break
		end
	end

	while turtle.down() do
	end
end
