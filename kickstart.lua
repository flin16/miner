-- Run wget "https://raw.githubusercontent.com/flin16/miner/refs/heads/main/kickstart.lua" to download this file
file_list = { "kickstart", "simple_logging" }

for _, file in ipairs(file_list) do
	http.get("https://raw.githubusercontent.com/flin16/miner/refs/heads/main/" .. file .. ".lua", file .. ".lua")
end
