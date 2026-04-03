vim.api.nvim_create_autocmd({ "VimLeave", "VimSuspend" }, {
  callback = function()
    vim.opt.guicursor = ""
    vim.fn.chansend(vim.v.stderr, "\x1b[ q")
  end,
  desc = "Restore terminal cursor",
})

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.undofile = true 		-- persistent undo
vim.opt.mouse = 'a'                     -- enable mouse for all modes
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.spell = true
vim.opt.smartindent = true

