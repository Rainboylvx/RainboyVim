-- use https://github.com/wbthomason/packer.nvim
return require('packer').startup(function(use)
  -- Packer can manage itself
  use {
      'wbthomason/packer.nvim',
      disable = false
  }

  -- coc.nvim ,conquer of completion
  use {'neoclide/coc.nvim', branch = 'release',
      disable = false
  }
  use {
      'SirVer/ultisnips',
      disable = false
  }

  -- plugin written by me(Rainboy)
  use {
      'RainboyNoip/algorithms',
      disable = false
  }

  -- UI
  -- setup ui
  use {
      'goolord/alpha-nvim',
      disable = false
  }
  ---- theme
  use {
      'morhetz/gruvbox',
      disable = false
  }

  ---- display
  use {
      'kyazdani42/nvim-web-devicons', -- icons
      disable = false
  }
  use {
      'akinsho/bufferline.nvim', tag = "v2.*",
      disable = false
  } -- tab
  use {
      'nvim-lualine/lualine.nvim', -- status line
      disable = false
  }
  use {
      'kyazdani42/nvim-tree.lua',
      disable = false
  }
  use {
      'chentoast/marks.nvim',      -- view mark
      disable = false
  }
  use {
      'norcalli/nvim-colorizer.lua',
      disable = false
  }

  -- adds indentation guides to all lines
  use {
      "lukas-reineke/indent-blankline.nvim",
      disable = false
  }

  -- tools
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'fannheyward/telescope-coc.nvim'

  use {"akinsho/toggleterm.nvim", tag = 'v2.*',
      disable = false
  }
  use {
      'h-hg/fcitx.nvim', -- switch input method
      disable = false
  }
  use {
      'vim-scripts/DrawIt', -- Draw ASCII diagrams in Neovim
      disable = false
  }

  use 'mattn/emmet-vim';

  -- Treesittetr
  use {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
      disable = false
  }
  -- outline
  use {
      'liuchengxu/vista.vim',
      disable = false
  }

  use {
      'numToStr/Comment.nvim',
      disable = false
  }

  use 'dhruvasagar/vim-table-mode'

  -- debugger
  -- use 'mfussenegger/nvim-dap'
  -- use 'theHamsta/nvim-dap-virtual-text'
  -- use 'rcarriga/nvim-dap-ui'
end)
