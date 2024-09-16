-- Delete this condition if you want to execute the file
-- if true then
-- 	return {}
-- end

-- Example of disabling some plugins. Add yours
local disabled = {
	-- {
	-- 	"akinsho/bufferline.nvim",
	-- },
	{
		"nvimdev/dashboard-nvim",
	},
	{
		"folke/flash.nvim",
	},
}

for i, plugin in ipairs(disabled) do
	plugin.enabled = false
end

return disabled
