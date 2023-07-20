local ts_utils = require('nvim-treesitter.ts_utils')
local M = {}

M.setup = function(opts)
    print("Options: ", opts)
end

local get_select_statment_range = function()
    local node = ts_utils.get_node_at_cursor()
    if node == nil then
        error("No Treesitter parser found")
    end

    while node ~= nil and node:type() ~= 'statement' do
        node = node:parent()
    end
    local start_row, start_col, end_row, end_col = node:range()

    if node:next_sibling() ~= nil and node:next_sibling():type() == 'ERROR' then
        _, _, end_row, end_col = node:next_sibling():range()
    end

    return {start_row, start_col, end_row, end_col}
end

M.select = function()
    local range = get_select_statment_range()
    local bufnr = vim.api.nvim_get_current_buf()
    ts_utils.update_selection(bufnr, range)
end

vim.cmd('command! DTSelectStatement echo luaeval("require(\'data-tools\').select()")')

return M
