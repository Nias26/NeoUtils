-- Check for dependencies
local status_ok, _ = pcall(require, "telescope")
if not status_ok then
	vim.notify("Error loading telescope", vim.log.levels.ERROR)
end
