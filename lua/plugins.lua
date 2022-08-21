-- use https://github.com/wbthomason/packer.nvim
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'morhetz/gruvbox'

  -- coc.nvim ,conquer of completion
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'SirVer/ultisnips'

  -- UI
  use 'kyazdani42/nvim-web-devicons' -- icons
  use {'akinsho/bufferline.nvim', tag = "v2.*"} -- tab
  use 'nvim-lualine/lualine.nvim' -- status line
  use 'kyazdani42/nvim-tree.lua'
end)
