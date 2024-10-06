local M = {}

local defaults = {
	enabled = {
		split = true,
	},
}

function M.setup(opts)
	opts = opts or defaults
end

function M.split(direction)
	require("telescope.builtin").find_files({
		attach_mappings = function(_, t_map)
			t_map("n", "<CR>", function(prompt_bufnr)
				local selected = require("telescope.actions.state").get_selected_entry()
				local cmd = direction .. " " .. selected[1]
				require("telescope.actions").close(prompt_bufnr)
				vim.api.nvim_command(cmd)
			end)
			t_map("i", "<CR>", function(prompt_bufnr)
				local selected = require("telescope.actions.state").get_selected_entry()
				local cmd = direction .. " " .. selected[1]
				require("telescope.actions").close(prompt_bufnr)
				vim.api.nvim_command(cmd)
			end)
			return true
		end,
	})
end

return M
