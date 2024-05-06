local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = {
	{
  		'mrcjkb/haskell-tools.nvim',
		version = '^3', -- Recommended
		lazy = false, -- This plugin is already lazy
	},
	{ 'wakatime/vim-wakatime', lazy = false }
}

require("lazy").setup(plugins, opts)
