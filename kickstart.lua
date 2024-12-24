-- Run wget "https://github.com/flin16/miner/blob/main/kickstart.lua" to download this file
file_list = { "kickstart", "simple_logging" }

for _, file in ipairs(file_list) do
	http.get("https://github.com/flin16/miner/blob/main/" + file + ".lua", file + ".lua")
end
