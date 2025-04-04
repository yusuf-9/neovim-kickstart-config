-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- save file without auto-formatting
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- quit file
-- vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Vertical scroll 10 lines at once instead of the whole page
vim.keymap.set('n', '<C-M-j>', '10jzz', opts)
vim.keymap.set('n', '<C-M-k>', '10kzz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize +2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize -2<CR>', opts)

-- Buffers
vim.keymap.set('n', '<C-n>', ':bnext<CR>', opts)
vim.keymap.set('n', '<C-p>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<C-q>', ':bdelete!<CR>', opts) -- close buffer
-- vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer
vim.keymap.set('n', '<C-q>', function()
  local current_buf = vim.api.nvim_get_current_buf()
  vim.cmd('bprev')            -- move to next buffer
  vim.cmd('bdelete ' .. current_buf)  -- then delete the previous one
end, opts)
 
 -- Window management
 vim.keymap.set('n', '<M-l>', '<C-w>v', opts) -- split window vertically
 vim.keymap.set('n', '<M-h>', '<C-w>v', opts) -- split window vertically
 vim.keymap.set('n', '<M-k>', '<C-w>s', opts) -- split window horizontally
 vim.keymap.set('n', '<M-j>', '<C-w>s', opts) -- split window horizontally
 vim.keymap.set('n', '<M-=>', '<C-w>=', opts) -- make split windows equal width & height
 vim.keymap.set('n', '<M-q>', ':close<CR>', opts) -- close current split window
 
 -- Navigate between splits
 vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
 vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
 vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
 vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)
 
-- -- Tabs
-- vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- open new tab
-- vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- close current tab
-- vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) --  go to next tab
-- vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) --  go to previous tab
 
-- -- Toggle line wrapping
 vim.keymap.set('n', '<M-z>', '<cmd>set wrap!<CR>', opts)
-- 
-- -- Stay in indent mode
 vim.keymap.set('v', '<', '<gv', opts)
 vim.keymap.set('v', '>', '>gv', opts)
 
 -- Keep last yanked when pasting
 vim.keymap.set('v', 'p', '"_dP', opts)
 
-- -- Diagnostic keymaps
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
-- vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Scroll file up/down with Ctrl+Up/Down in normal and insert mode
-- Normal mode
vim.keymap.set('n', '<C-Up>', '<C-y>', opts)
vim.keymap.set('n', '<C-Down>', '<C-e>', opts)

-- Insert mode (temporarily leave insert mode to scroll)
vim.keymap.set('i', '<C-Up>', '<C-o><C-y>', opts)
vim.keymap.set('i', '<C-Down>', '<C-o><C-e>', opts)

-- Mapping 1 and 0 to move to beginning and end of lines
vim.keymap.set('n', '1', '^', opts) -- Move to first non-blank character of line
vim.keymap.set('n', '0', '$', opts) -- Remap 0 to go to end of line

-- Delete one word at a time with Ctrl+Backspace in Insert Mode
vim.keymap.set('i', '<C-H>', '<C-w>', opts) -- <C-H> is usually Ctrl+Backspace
