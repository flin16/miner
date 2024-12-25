function vec_sub(a, b)
	local n = #a
	if n ~= #b then
		return nil, "Lengths are nonequal"
	end
	local ans = {}
	for i = 1, n do
		table.insert(ans, a[i] - b[i])
	end
	return ans
end

function vec_equal(a, b)
	local n = #a
	if n ~= #b then
		return nil, "Lengths are nonequal"
	end
	for i = 1, n do
		if a[i] ~= b[i] then
			return false
		end
	end
	return true
end

function vec2str(v)
	local n = #v
	local ans = ""
	for i = 1, n do
		if i > 1 then
			ans = ans .. ","
		end
		ans = ans .. tostring(i)
	end
	return ans
end

function path2direct(path)
	if not path then
		return
	end
	if path[1] then
		return nil, "Path has to begin with (0,0)"
	end
	local len = #path
	local dir = 0
	for i = 2, len do
		df = vec_sub(path[i], path[i - 1])
		if not df then
			return
		end
	end
end

function direct2move(direct)
	if not direct then
		return
	end
end

function path2move(path)
	return direct2move(path2direct(path))
end
