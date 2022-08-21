-- use https://github.com/wbthomason/packer.nvim
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'morhetz/gruvbox'

  -- UI
  use 'kyazdani42/nvim-web-devicons' -- icons
  use 'nvim-lualine/lualine.nvim' -- status line
end)
