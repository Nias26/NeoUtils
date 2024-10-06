local M = {}

local defaults = {
	enabled = {
		split = true,
	},
}

function M.setup(opts)
	-- Load options
	opts = opts or defaults

	-- Load utils
	if opts.enabled.split then
		require("neoutils.utils.split")
	end
end

return M
