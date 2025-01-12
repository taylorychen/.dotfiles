local theme = "kanagawa"

-- map theme to specific style. eg: tokyonight -> tokyonight-night
local themeToStyle = {
	tokyonight = "tokyonight-night",
	-- kanagawa = "kanagawa-dragon",
	kanagawa = "kanagawa-wave",
	vague = "vague",
	melange = "melange",
}

local function initialize()
	-- Load the colorscheme here.
	-- Like many other themes, this one has different styles, and you could load
	-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
	vim.cmd.colorscheme(themeToStyle[theme])

	-- You can configure highlights by doing something like:
	vim.cmd.hi("Comment gui=none")
end

return {
	{
		-- To change coloschemes, change the name of the colorscheme plugin below, then
		-- change the command in the config to whatever the name of that colorscheme is.
		--
		-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
		"folke/tokyonight.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		init = initialize,
	},
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		init = initialize,
	},
	{
		"vague2k/vague.nvim",
		priority = 1000,
		config = function()
			require("vague").setup({
				-- optional configuration here
			})
		end,
		init = initialize,
	},
	{
		"savq/melange-nvim",
		priority = 1000,
		init = initialize,
	},
}
