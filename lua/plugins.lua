-- use https://github.com/wbthomason/packer.nvim
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- coc.nvim ,conquer of completion
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'SirVer/ultisnips'

  -- plugin written by me(Rainboy)
  use 'RainboyNoip/algorithms'

  -- UI
  ---- theme
  use 'morhetz/gruvbox'
  ---- display
  use 'kyazdani42/nvim-web-devicons' -- icons
  use {'akinsho/bufferline.nvim', tag = "v2.*"} -- tab
  use 'nvim-lualine/lualine.nvim' -- status line
  use 'kyazdani42/nvim-tree.lua'
end)
