local HOME = os.getenv("HOME")
local settings = {
    -- basic settings
    encoding = "utf-8",
    backspace = "indent,eol,start", -- backspace works on every char in insert mode
    completeopt = "menu,noinsert",
    history = 1000,
    startofline = true,

    -- Mapping wating time
    timeout = false,
    ttimeout = true,
    ttimeoutlen = 100,

    -- display
    -- background = "dark",
    termguicolors = true,
    showmatch = false , -- briefly jump to the matching one bracket
    laststatus = 2,     -- always show status line
    scrolloff = 3, -- always show 3 rows from edge of the screen
    synmaxcol = 300, -- stop syntax highlight after x lines for performance

    list = true, -- display white characters
    listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂,multispace:→   ',
--listchars='eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ',
--listchars='eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ,',
-- o.formatoptions = 'qrn1' -- help fo-table
    foldenable = true,
    foldlevel = 4, -- limit folding to 4 levels
    foldmethod = 'syntax', -- use language syntax to generate folds
    wrap = true,
    showbreak= '↪', -- character to show when line is broken

    -- Sidebar
	number = true,-- line number on the left
    numberwidth = 3, -- always reserve 3 spaces for line number
	relativenumber = true,
    signcolumn = 'yes', -- keep 1 column for coc.nvim check
    showcmd = true, -- display command in bottom bar
    -- Search
    incsearch = true, -- starts searching as soon as typing, without enter needed
    ignorecase = true, -- ignore letter case when searching
    smartcase = true, -- case insentive unless capitals used in search

    matchtime = 2, -- delay before showing matching paren
    mps = vim.o.mps .. ",<:>",

    -- White characters
    autoindent = true,
    smartindent = true,
    tabstop = 4, -- 1 tab = 2 spaces
    shiftwidth = 4, -- indentation rule
    formatoptions = 'qnj1', -- q  - comment formatting; n - numbered lists; j - remove comment when joining lines; 1 - don't break after one-letter word
    expandtab = true, -- expand tab to spaces

-- Backup files
    backup = true, -- use backup files
    writebackup = false,
    swapfile = false, -- do not use swap file
    undodir = HOME .. '/.vim/tmp/undo//',    -- undo files
    backupdir = HOME .. '/.vim/tmp/backup//', -- backups
    directory = '/.vim/tmp/swap//',   -- swap files

    -- Commands mode
    wildmenu = true, -- on TAB, complete options for system command
    wildignore = 'deps,.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc',

}
for k,v in pairs(settings) do
	vim.o[k] = v
end

    -- theme
vim.cmd("colorscheme murphy")