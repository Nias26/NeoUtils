local M = {}

local defaults = {
	enabled = {
		split = true,
	},
}

function M.setup(opts)
	-- Check for dependencies
	local status_ok, _ = pcall(require, "telescope")
	if not status_ok then
		vim.notify("Error loading telescope", vim.log.levels.ERROR)
	end

	-- Load options
	opts = opts or defaults

	-- Load utils
	if opts.enabled.split then
		M.split = require("neoutils.utils.split").split
	end
end

return M
