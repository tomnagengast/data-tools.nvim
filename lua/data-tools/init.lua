local M = {}

-- vim.api.nvim_notify("Loaded data-tools", vim.log.levels.INFO, {})
-- vim.api.nvim_notify("This is a warning message", vim.log.levels.WARN, {})

M.setup = function(opts)
    print("Options: ", opts)
end

M.current_path = function()
    return vim.fn.expand("%:p")
end

print('test ' .. M.current_path())

return M

--[[

lua P(require('data-tools'))
lua P(require('data-tools').example())
lua P(require('data-tools').setup({opt1 = 'value1', opt2 = 'value2'}))
lua R('data-tools')

--]]
