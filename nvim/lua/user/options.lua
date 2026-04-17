vim.api.nvim_create_autocmd({ "VimLeave", "VimSuspend" }, {
  callback = function()
    vim.opt.guicursor = ""
    vim.fn.chansend(vim.v.stderr, "\x1b[ q")
  end,
  desc = "Restore terminal cursor",
})

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wildmode = 'longest:full,full' 	-- complete the longest common match, and allow tabbing the results to fully complete them

vim.opt.title = true
vim.opt.mouse = 'a'                     -- enable mouse for all modes

vim.opt.spell = true
vim.opt.termguicolors = true
vim.opt.ignorecase = true
vim.opt.smartcase = true


vim.opt.list = true     -- enable the below listchars
vim.opt.listchars = { tab = '▸ ', trail = '·', nbsp = '␣' }
vim.opt.fillchars:append({ eob = ' '})  -- remove the ~ from the end of buffer

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.clipboard = 'unnamedplus'     -- use system clipboard

vim.opt.confirm = true


vim.opt.undofile = true 		        -- persistent undo
vim.opt.backup = true
vim.opt.backupdir:remove('.')       -- keep the backup in ~/.nvim folder



