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
  -- setup ui
  use 'goolord/alpha-nvim'
  ---- theme
  use 'morhetz/gruvbox'

  ---- display
  use 'kyazdani42/nvim-web-devicons' -- icons
  use {'akinsho/bufferline.nvim', tag = "v2.*"} -- tab
  use 'nvim-lualine/lualine.nvim' -- status line
  use 'kyazdani42/nvim-tree.lua'

  -- adds indentation guides to all lines
  use "lukas-reineke/indent-blankline.nvim" 

  -- tools
  use {"akinsho/toggleterm.nvim", tag = 'v2.*'}
  use 'h-hg/fcitx.nvim' -- switch input method

  -- Treesittetr
  use {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
  }
  -- outline
  use 'liuchengxu/vista.vim'

  use 'terrortylor/nvim-comment'

  -- debugger
  use 'mfussenegger/nvim-dap'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'rcarriga/nvim-dap-ui'
end)
