-- Run wget https://gist.githubusercontent.com/SquidDev/e0f82765bfdefd48b0b15a5c06c0603b/raw/clone.min.lua
-- and run clone.min https://github.com/flin16/miner
shell.run("rm", ".")
shell.run("../clone.min", "https://github.com/flin16/miner")
