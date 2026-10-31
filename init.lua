-- theme & transparency
-- vim.cmd.colorscheme("wildcharm") -- also good: sorbet, habermax, unokai
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
vim.api.nvim_set_hl(0, "TabLine", { bg = "none" })

vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "none" })

vim.opt.grepprg = "grep -HRIn $* ."

-- Basic settings
vim.opt.number = true                              -- Line numbers
vim.opt.relativenumber = true                      -- Relative line numbers
vim.opt.cursorline = true                          -- Highlight current line
vim.opt.wrap = false                               -- Don't wrap lines
vim.opt.scrolloff = 10                             -- Keep 10 lines above/below cursor 
vim.opt.sidescrolloff = 8                          -- Keep 8 columns left/right of cursor

-- Indentation
vim.opt.tabstop = 4                                -- Tab width
vim.opt.shiftwidth = 4                             -- Indent width
vim.opt.softtabstop = 4                            -- Soft tab stop
vim.opt.expandtab = true                           -- Use spaces instead of tabs
vim.opt.smartindent = true                         -- Smart auto-indenting
vim.opt.autoindent = true                          -- Copy indent from current line

-- Search settings
vim.opt.ignorecase = true                          -- Case insensitive search
vim.opt.smartcase = true                           -- Case sensitive if uppercase in search
vim.opt.hlsearch = true                            -- Highlight search results 
vim.opt.incsearch = true                           -- Show matches as you type

-- Visual settings
vim.opt.termguicolors = true                       -- Enable 24-bit colors
vim.opt.signcolumn = "yes"                         -- Always show sign column
vim.opt.colorcolumn = "100"                        -- Show column at 100 characters
vim.opt.showmatch = true                           -- Highlight matching brackets
vim.opt.matchtime = 5                              -- How long to show matching bracket
vim.opt.cmdheight = 1                              -- Command line height
vim.opt.completeopt = "menuone,noinsert,noselect"  -- Completion options 
vim.opt.showmode = false                           -- Show mode in command line 
vim.opt.pumheight = 10                             -- Popup menu height 
vim.opt.pumblend = 10                              -- Popup menu transparency 
vim.opt.winblend = 0                               -- Floating window transparency 
vim.opt.conceallevel = 0                           -- Don't hide markup 
vim.opt.concealcursor = ""                         -- Don't hide cursor line markup 
vim.opt.lazyredraw = true                          -- Don't redraw during macros
vim.opt.synmaxcol = 300                            -- Syntax highlighting limit 
-- vim.opt.fillchars = { eob = " " }                  -- Hide ~ on empty lines

-- Create undo directory if it doesn't exist
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

-- File handling
vim.opt.backup = false                             -- Don't create backup files
vim.opt.writebackup = false                        -- Don't create backup before writing
vim.opt.swapfile = false                           -- Don't create swap files
vim.opt.undofile = true                            -- Persistent undo
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")  -- Undo directory
vim.opt.updatetime = 300                           -- Faster completion
vim.opt.timeoutlen = 500                           -- Key timeout duration
vim.opt.ttimeoutlen = 50                           -- Key code timeout
vim.opt.autoread = true                            -- Auto reload files changed outside vim
vim.opt.autowrite = false                          -- Don't auto save

-- Behavior settings
vim.opt.hidden = true                              -- Allow hidden buffers
vim.opt.errorbells = false                         -- No error bells
vim.opt.backspace = "indent,eol,start"             -- Better backspace behavior
vim.opt.autochdir = false                          -- Don't auto change directory
vim.opt.iskeyword:append("-")                      -- Treat dash as part of word
vim.opt.path:append("**")                          -- include subdirectories in search
vim.opt.selection = "exclusive"                    -- Selection behavior
vim.opt.mouse = "a"                                -- Enable mouse support
vim.opt.clipboard:append("unnamedplus")            -- Use system clipboard
vim.opt.modifiable = true                          -- Allow buffer modifications
vim.opt.encoding = "UTF-8"                         -- Set encoding

-- Cursor settings
vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Folding settings
vim.opt.foldmethod = "expr"                        -- Use expression for folding
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"    -- Use treesitter for folding
vim.opt.foldlevel = 99                             -- Start with all folds open

-- Split behavior
vim.opt.splitbelow = true                          -- Horizontal splits go below
vim.opt.splitright = true                          -- Vertical splits go right

-- Key mappings
vim.g.mapleader = " "                              -- Set leader key to space
vim.g.maplocalleader = " "                         -- Set local leader key (NEW)

vim.opt.list = true
vim.opt.listchars = { tab = '» ' }

-- Normal mode mappings
-- vim.keymap.set("n", "<leader>c", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- Y to EOL
-- vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

-- Center screen when jumping
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Better paste behavior
-- vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Splitting & Resizing
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", { desc = "Increase window width" })
-- vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#444444", bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "#1e1e24" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Quick file navigation
vim.keymap.set("n", "<leader>e",  ":Explore<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>l",  ":Lex<CR>",     { desc = "Open file tree in split view" })
vim.keymap.set("n", "<leader>ff", ":find ",       { desc = "Find file" })
vim.keymap.set("n", "<leader>gg", ":copen | :silent : grep ", { desc = "Grep in all it's glory." })
vim.keymap.set("n", "]q", ":cnext <CR>", { desc = "Next grep result" })
vim.keymap.set("n", "[q", ":cprev <CR>", { desc = "Previous grep result" })
-- NOTE: :copen opens grep results!
-- Check this:  vim marks!  
-- m<letter> creates a mark (bookmark).  '<letter> takes you back to the line.  `<letter> takes you the he column
-- :delmark <letter> deletes the mark

-- Better J behavior
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- Quick config editing
vim.keymap.set("n", "<leader>rc", ":e $MYVIMRC<CR>", { desc = "Edit config" })
vim.keymap.set("n", "<leader>rl", ":so $MYVIMRC<CR>", { desc = "Reload config" })

-- Replace the word under the cursor with the paste buffer
vim.keymap.set("n", "<leader>pp", "viwP", { desc = "Replace the word under the cursor with the copied text" })
-- Copy Full File-Path
vim.keymap.set("n", "<leader>pa", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    print("file:", path)
end)

-- Basic autocommands
local augroup = vim.api.nvim_create_augroup("UserConfig", {})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Return to last edit position when opening files
vim.api.nvim_create_autocmd("BufReadPost", {
  group = augroup,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    local line = mark[1]
    local ft = vim.bo.filetype
    if line > 0 and line <= lcount
      and vim.fn.index({ "commit", "gitrebase", "xxd" }, ft) == -1
      and not vim.o.diff then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Auto-resize splits when window is resized
vim.api.nvim_create_autocmd("VimResized", {
  group = augroup,
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})

-- Auto-close terminal when process exits
vim.api.nvim_create_autocmd("TermClose", {
  group = augroup,
  callback = function()
    if vim.v.event.status == 0 then
      vim.api.nvim_buf_delete(0, {})
    end
  end,
})

-- Create directories when saving files
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  callback = function()
    local dir = vim.fn.expand('<afile>:p:h')
    if vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, 'p')
    end
  end,
})

-- Command-line completion
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar" })

-- Better diff options
vim.opt.diffopt:append("linematch:60")

-- Performance improvements
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000

-- ============================================================================
-- FILE EXPLORING
-- ============================================================================
-- vim.g.netrw_liststyle = 2
-- vim.g.netrw_winsize = 25
-- vim.g.netrw_banner = 0
vim.keymap.set("n", "<leader>le", ":Lex<CR>", { desc = "Open Left-side file explorer." })

-- ============================================================================
-- FLOATING TERMINAL
-- ============================================================================

-- terminal
local terminal_state = {
  buf = nil,
  win = nil,
  is_open = false
}

local function FloatingTerminal()
  -- If terminal is already open, close it (toggle behavior)
  if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
    vim.api.nvim_win_close(terminal_state.win, false)
    terminal_state.is_open = false
    return
  end

  -- Create buffer if it doesn't exist or is invalid
  if not terminal_state.buf or not vim.api.nvim_buf_is_valid(terminal_state.buf) then
    terminal_state.buf = vim.api.nvim_create_buf(false, true)
    -- Set buffer options for better terminal experience
    vim.bo[terminal_state.buf].bufhidden = 'hide'
  end

  -- Calculate window dimensions
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  -- Create the floating window
  terminal_state.win = vim.api.nvim_open_win(terminal_state.buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'rounded',
  })

  -- Set transparency for the floating window
  vim.wo[terminal_state.win].winblend = 0
  vim.wo[terminal_state.win].winhighlight = 'Normal:FloatingTermNormal,FloatBorder:FloatingTermBorder'

  -- Define highlight groups for transparency
  vim.api.nvim_set_hl(0, "FloatingTermNormal", { bg = "none" })
  vim.api.nvim_set_hl(0, "FloatingTermBorder", { bg = "none", })

  -- Start terminal if not already running
  local has_terminal = false
  local lines = vim.api.nvim_buf_get_lines(terminal_state.buf, 0, -1, false)
  for _, line in ipairs(lines) do
    if line ~= "" then
      has_terminal = true
      break
    end
  end

  if not has_terminal then
    vim.fn.termopen(os.getenv("SHELL"))
  end

  terminal_state.is_open = true
  vim.cmd("startinsert")

  -- Set up auto-close on buffer leave 
  vim.api.nvim_create_autocmd("BufLeave", {
    buffer = terminal_state.buf,
    callback = function()
      if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
        vim.api.nvim_win_close(terminal_state.win, false)
        terminal_state.is_open = false
      end
    end,
    once = true
  })
end

-- Function to explicitly close the terminal
local function CloseFloatingTerminal()
  if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
    vim.api.nvim_win_close(terminal_state.win, false)
    terminal_state.is_open = false
  end
end

-- Key mappings
vim.keymap.set("n", "<leader>t", FloatingTerminal, { noremap = true, silent = true, desc = "Toggle floating terminal" })
vim.keymap.set("t", "<Esc>", CloseFloatingTerminal, { noremap = true, silent = true, desc = "Close floating terminal from terminal mode" })


-- ============================================================================
-- TABS
-- ============================================================================

-- Tab display settings
vim.opt.showtabline = 2  -- Always show tabline (0=never, 1=when multiple tabs, 2=always)
-- vim.opt.tabline = ''     -- Use default tabline (empty string uses built-in)

-- Alternative navigation (more intuitive)
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'New tab' })
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close tab' })

-- Tab moving
vim.keymap.set('n', '<leader>tm', ':tabmove<CR>', { desc = 'Move tab' })
vim.keymap.set('n', '<C+PageDown>', ':tabmove +1<CR>', { desc = 'Move tab right' })
vim.keymap.set('n', '<C+PageDown>', ':tabmove -1<CR>', { desc = 'Move tab left' })

-- Function to open file in new tab
local function open_file_in_tab()
  vim.ui.input({ prompt = 'File to open in new tab: ', completion = 'file' }, function(input)
    if input and input ~= '' then
      vim.cmd('tabnew ' .. input)
    end
  end)
end

-- Function to duplicate current tab
local function duplicate_tab()
  local current_file = vim.fn.expand('%:p')
  if current_file ~= '' then
    vim.cmd('tabnew ' .. current_file)
  else
    vim.cmd('tabnew')
  end
end

-- Function to close tabs to the right
local function close_tabs_right()
  local current_tab = vim.fn.tabpagenr()
  local last_tab = vim.fn.tabpagenr('$')

  for i = last_tab, current_tab + 1, -1 do
    vim.cmd(i .. 'tabclose')
  end
end

-- Function to close tabs to the left
local function close_tabs_left()
  local current_tab = vim.fn.tabpagenr()

  for i = current_tab - 1, 1, -1 do
    vim.cmd('1tabclose')
  end
end

-- Enhanced keybindings
vim.keymap.set('n', '<leader>tO', open_file_in_tab, { desc = 'Open file in new tab' })
vim.keymap.set('n', '<leader>td', duplicate_tab, { desc = 'Duplicate current tab' })
vim.keymap.set('n', '<leader>tr', close_tabs_right, { desc = 'Close tabs to the right' })
vim.keymap.set('n', '<leader>tL', close_tabs_left, { desc = 'Close tabs to the left' })

-- Function to close buffer but keep tab if it's the only buffer in tab
local function smart_close_buffer()
  local buffers_in_tab = #vim.fn.tabpagebuflist()
  if buffers_in_tab > 1 then
    vim.cmd('bdelete')
  else
    -- If it's the only buffer in tab, close the tab
    vim.cmd('tabclose')
  end
end
vim.keymap.set('n', '<leader>bd', smart_close_buffer, { desc = 'Smart close buffer/tab' })

-- Define distinct custom highlights (Adjust colors if desired)
-- Active Tab: Dark background with bright green text
vim.api.nvim_set_hl(0, "CustomTabActive", { fg = "#A6E22E", bg = "#232526", bold = true })
-- Inactive Tab: Gray text on a darker background
vim.api.nvim_set_hl(0, "CustomTabInactive", { fg = "#75715E", bg = "#1B1D1E" })
-- Empty Tabline Space: Matches the main editor background
vim.api.nvim_set_hl(0, "CustomTabFill", { bg = "#121212" })

function _G.custom_tabline()
  local s = ""
  for i = 1, vim.fn.tabpagenr('$') do
    -- Highlight active vs inactive tabs
    if i == vim.fn.tabpagenr() then
      s = s .. "%#CustomTabActive#"
    else
      s = s .. "%#CustomTabInactive#"
    end

    -- Add custom "border" characters around each tab label
    local winnr = vim.fn.tabpagewinnr(i)
    local buflist = vim.fn.tabpagebuflist(i)
    local bufnr = buflist[winnr]
    local fname = vim.fn.bufname(bufnr)
    local name = vim.fn.fnamemodify(fname, ":t")
    if name == "" then name = "[No Name]" end

    -- Clickable tab item marker (%{i}T) and padded box style
    s = s .. "%" .. i .. "T"
    s = s .. " ╭ " .. name .. " ╮ "
  end

  -- Fill the rest of the tabline with background highlight and reset
  s = s .. "%#TabLineFill#"
  return s
end

-- Assign the function to Neovim's global tabline option
vim.opt.tabline = "%!v:lua.custom_tabline()"

-- ============================================================================
-- STATUSLINE
-- ============================================================================

-- Git branch function with caching and Nerd Font icon
local cached_branch = ""
local last_check = 0
local function git_branch()
  local now = vim.loop.now()
  if now - last_check > 5000 then  -- Check every 5 seconds
    cached_branch = vim.fn.system("git branch --show-current 2>/dev/null | tr -d '\n'")
    last_check = now
  end
  if cached_branch ~= "" then
    return " \u{e725} " .. cached_branch .. " "  -- nf-dev-git_branch
  end
  return ""
end

-- File type with Nerd Font icon
local function file_type()
  local ft = vim.bo.filetype
  local icons = {
    lua = "\u{e620} ",           -- nf-dev-lua
    python = "\u{e73c} ",        -- nf-dev-python
    javascript = "\u{e74e} ",    -- nf-dev-javascript
    typescript = "\u{e628} ",    -- nf-dev-typescript
    javascriptreact = "\u{e7ba} ",
    typescriptreact = "\u{e7ba} ",
    html = "\u{e736} ",          -- nf-dev-html5
    css = "\u{e749} ",           -- nf-dev-css3
    scss = "\u{e749} ",
    json = "\u{e60b} ",          -- nf-dev-json
    markdown = "\u{e73e} ",      -- nf-dev-markdown
    vim = "\u{e62b} ",           -- nf-dev-vim
    sh = "\u{f489} ",            -- nf-oct-terminal
    bash = "\u{f489} ",
    zsh = "\u{f489} ",
    rust = "\u{e7a8} ",          -- nf-dev-rust
    go = "\u{e724} ",            -- nf-dev-go
    c = "\u{e61e} ",             -- nf-dev-c
    cpp = "\u{e61d} ",           -- nf-dev-cplusplus
    java = "\u{e738} ",          -- nf-dev-java
    php = "\u{e73d} ",           -- nf-dev-php
    ruby = "\u{e739} ",          -- nf-dev-ruby
    swift = "\u{e755} ",         -- nf-dev-swift
    kotlin = "\u{e634} ",
    dart = "\u{e798} ",
    elixir = "\u{e62d} ",
    haskell = "\u{e777} ",
    sql = "\u{e706} ",
    yaml = "\u{f481} ",
    toml = "\u{e615} ",
    xml = "\u{f05c} ",
    dockerfile = "\u{f308} ",    -- nf-linux-docker
    gitcommit = "\u{f418} ",     -- nf-oct-git_commit
    gitconfig = "\u{f1d3} ",     -- nf-fa-git
    vue = "\u{fd42} ",           -- nf-md-vuejs
    svelte = "\u{e697} ",
    astro = "\u{e628} ",
  }

  if ft == "" then
    return " \u{f15b} "          -- nf-fa-file_o
  end

  return (icons[ft] or " \u{f15b} " .. ft)
end

-- File size with Nerd Font icon
local function file_size()
  local size = vim.fn.getfsize(vim.fn.expand('%'))
  if size < 0 then return "" end
  
  local size_str
  if size < 1024 then
    size_str = size .. "B"
  elseif size < 1024 * 1024 then
    size_str = string.format("%.1fK", size / 1024)
  else
    size_str = string.format("%.1fM", size / 1024 / 1024)
  end
  
  return " \u{f016} " .. size_str .. " "  -- nf-fa-file_o
end

-- Mode indicators with Nerd Font icons
local function mode_icon()
  local mode = vim.fn.mode()
  local modes = {
    n = " \u{f040} NORMAL",      -- nf-fa-pencil
    i = " \u{f303} INSERT",      -- nf-linux-vim
    v = " \u{f06e} VISUAL",      -- nf-fa-eye
    V = " \u{f06e} V-LINE",
    ["\22"] = " \u{f06e} V-BLOCK",  -- Ctrl-V
    c = " \u{f120} COMMAND",     -- nf-fa-terminal
    s = " \u{f0c5} SELECT",      -- nf-fa-files_o
    S = " \u{f0c5} S-LINE",
    ["\19"] = " \u{f0c5} S-BLOCK",  -- Ctrl-S
    R = " \u{f044} REPLACE",     -- nf-fa-edit
    r = " \u{f044} REPLACE",
    ["!"] = " \u{f489} SHELL",   -- nf-oct-terminal
    t = " \u{f120} TERMINAL"     -- nf-fa-terminal
  }
  return modes[mode] or " \u{f059} " .. mode:upper()  -- nf-fa-question_circle
end

_G.mode_icon = mode_icon
_G.git_branch = git_branch
_G.file_type = file_type
_G.file_size = file_size

vim.cmd([[
  highlight StatusLineBold gui=bold cterm=bold
]])

-- Function to change statusline based on window focus
local function setup_dynamic_statusline()
  vim.api.nvim_create_autocmd({"WinEnter", "BufEnter"}, {
    callback = function()
    vim.opt_local.statusline = table.concat {
      "  ",
      "%#StatusLineBold#",
      "%{v:lua.mode_icon()}",
      "%#StatusLine#",
      " \u{e0b1} %f %h%m%r",     -- nf-pl-left_hard_divider
      "%{v:lua.git_branch()}",
      "\u{e0b1} ",               -- nf-pl-left_hard_divider
      "%{v:lua.file_type()}",
      "\u{e0b1} ",               -- nf-pl-left_hard_divider
      "%{v:lua.file_size()}",
      "%=",                      -- Right-align everything after this
      " \u{f017} %l:%c  %P ",    -- nf-fa-clock_o for line/col
    }
    end
  })
  vim.api.nvim_set_hl(0, "StatusLineBold", { bold = true })

  vim.api.nvim_create_autocmd({"WinLeave", "BufLeave"}, {
    callback = function()
      vim.opt_local.statusline = "  %f %h%m%r \u{e0b1} %{v:lua.file_type()} %=  %l:%c   %P "
    end
  })
end

setup_dynamic_statusline()


-- ============================================================================
-- LSP CONFIGURATION
-- ============================================================================


vim.keymap.set("i", "<C-Space>", "<C-x><C-o>", {noremap=true, silent=true} )

-- LSP settings -- other filetypes:  'h', 'hpp' 
local function setup_lsp()
  vim.lsp.config('clangd', {
      cmd = { 'clangd',
              '--header-insertion=iwyu',
              '--completion-style=detailed',
              '--function-arg-placeholders=true',
              '--query-driver=/usr/bin/g++,/usr/bin/clang++,/usr/bin/c++,/usr/bin/gcc,/usr/bin/clang'},
      filetypes = { 'c', 'cpp'},
      on_attach = function(client, bufnr)
        -- Enable built-in omnicomplete powered by the LSP
        vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
    
        -- Useful built-in LSP Keymaps for navigation
        local opts = { buffer = bufnr, silent = true }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K",  vim.lsp.buf.hover,      opts)
--        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      end,
  })
  
  vim.lsp.enable ({ 'clangd' })

  -- Show diagnostic signs in the gutter
  local signs = {
    Error = "\u{f06a} ", -- nf-fa-exclamation_circle
    Warn = "\u{f071} ",  -- nf-fa-exclamation_triangle
    Hint = "\u{f0eb} ",  -- nf-fa-lightbulb_o
    Info = "\u{f05a} "   -- nf-fa-info_circle
  }

  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end

  -- Diagnostic configuration
  vim.diagnostic.config({
    virtual_text = {
      prefix = '●',
      spacing = 4,
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
      border = 'rounded',
      source = 'always',
      header = '',
      prefix = '',
    },
  })

  -- LSP keymaps (set when LSP attaches)
--  vim.api.nvim_create_autocmd('LspAttach', {
--    group = augroup,
--    callback = function(ev)
--        local client = vim.lsp.get_client_by_id(args.data.client_id)
--    
--        -- Enable native autocomplete UI popup as you type
--        if client and client.supports_method("textDocument/completion") then
--          vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
--        end
--
--        -- Tab completion keymaps
--        local opts = { buffer = args.buf }
--
--        -- Use Tab to navigate forward in the popup menu or trigger it manually
--        vim.keymap.set("i", "<Tab>", function()
--          if vim.fn.pumvisible() == 1 then
--            return "<C-n>"
--          else
--            return "<Tab>"
--          end
--        end, { expr = true, buffer = args.buf })
--
--        -- Use Shift+Tab to navigate backward in the popup menu
--        vim.keymap.set("i", "<S-Tab>", function()
--          if vim.fn.pumvisible() == 1 then
--            return "<C-p>"
--          else
--            return "<S-Tab>"
--          end
--        end, { expr = true, buffer = args.buf })
--
--
----      vim.keymap.set('n', 'gl', vim.diagnostic.open_float)
--        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
--        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
--        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
--        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
--        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
--        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
--        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
--        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
--        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
--        vim.keymap.set('n', '<leader>f', function()
--          vim.lsp.buf.format { async = true }
--        end, opts)
--    end,
--  })
  vim.api.nvim_create_autocmd('LspAttach', {
    group = augroup,
    callback = function(ev)
      local opts = { buffer = ev.buf }
      local client = vim.lsp.get_client_by_id(ev.data.client_id)
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
      vim.keymap.set("i", "<Tab>", function()
        if vim.fn.pumvisible() == 1 then
          return "<C-n>"
        else
          return "<Tab>"
        end
      end, { expr = true, buffer = ev.buf })
      vim.keymap.set('n', 'gl', vim.diagnostic.open_float)
      vim.keymap.set('n', 'gD',         vim.lsp.buf.declaration,     opts)
      vim.keymap.set('n', 'gd',         vim.lsp.buf.definition,      opts)
      vim.keymap.set('n', 'K',          vim.lsp.buf.hover,           opts)
      vim.keymap.set('n', 'gi',         vim.lsp.buf.implementation,  opts)
      vim.keymap.set('n', '<C-k>',      vim.lsp.buf.signature_help,  opts)
      vim.keymap.set('n', '<leader>D',  vim.lsp.buf.type_definition, opts)
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename,          opts)
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action,     opts)
      vim.keymap.set('n', 'gr',         vim.lsp.buf.references,      opts)
      vim.keymap.set('n', '<leader>f', function()
        vim.lsp.buf.format { async = true }
      end, opts)

      -- Only apply to clangd and buffers that support folding ranges
      if client and client.name == "clangd" and client:supports_method("textDocument/foldingRange") then
          -- Use the native LSP folding expression
          vim.wo.foldmethod = "expr"
          vim.wo.foldexpr = "v:lua.vim.lsp.foldexpr()"
          
          -- Prevent everything from collapsing immediately when opening a file
          vim.wo.foldlevel = 99
--          vim.wo.foldlevelstart = 99
          vim.wo.foldenable = true
      end
    end,
  })

  -- Floating window borders
  local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
  function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = opts.border or 'rounded'
    return orig_util_open_floating_preview(contents, syntax, opts, ...)
  end

  vim.keymap.set("n", "gh", function()
    local bufnr = vim.api.nvim_get_current_buf()
    -- Request clangd's specific URI-switch capability
    vim.lsp.buf_request(bufnr, "textDocument/switchSourceHeader", { uri = vim.uri_from_bufnr(bufnr) }, function(err, result)
      if err then 
        vim.notify("LSP Error: " .. err.message, vim.log.levels.ERROR) 
        return 
      end
      if not result then 
        vim.notify("No corresponding source or header file found.", vim.log.levels.WARN) 
        return 
      end
      -- Open the matching file returned by clangd
      vim.cmd("edit " .. vim.uri_to_fname(result))
    end)
  end, { desc = "Clangd: Switch Source/Header" })
end




vim.keymap.set('n', '<leader>dt', function()
  -- Read the current configuration state
  local current_state = vim.diagnostic.config().virtual_text
  
  -- Toggle just the virtual_text setting
  vim.diagnostic.config({
    virtual_text = not current_state
  })
  --if vim.diagnostic.is_enabled() then
  --  vim.diagnostic.enable(false)
  --else
  --  vim.diagnostic.enable(true)
  --end
end, { desc = 'Toggle diagnostics' })

-- LSP diagnostic keymaps (always available)
vim.keymap.set('n', 'pd',         vim.diagnostic.goto_prev,  { desc = 'Previous diagnostic' })
vim.keymap.set('n', 'nd',         vim.diagnostic.goto_next,  { desc = 'Next diagnostic' })
vim.keymap.set('n', '<leader>q',  vim.diagnostic.setloclist, { desc = 'Open diagnostic list' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.open_float, { desc = 'Show line diagnostics' })

setup_lsp()

-- Opens git blame for the current file in a vertical split window
vim.keymap.set('n', '<leader>gb', function()
  local file = vim.api.nvim_buf_get_name(0)
  vim.cmd('vsplit | terminal git blame ' .. vim.fn.shellescape(file))
end, { desc = 'Git Blame in Split' })



local blame_ns = vim.api.nvim_create_namespace("InlineGitBlame")

-- 1. Initialize the global toggle state (disabled by default)
vim.g.git_blame_enabled = false

local function show_git_blame()
  -- Always clear the previous text first
  vim.api.nvim_buf_clear_namespace(0, blame_ns, 0, -1)

  -- 2. Exit early if the feature is toggled off
  if not vim.g.git_blame_enabled then return end

  local file = vim.api.nvim_buf_get_name(0)
  if file == "" or vim.bo.buftype ~= "" then return end

  local line = vim.api.nvim_win_get_cursor(0)[1]
  
  local cmd = string.format("git blame -L %d,%d --porcelain %s", line, line, vim.fn.shellescape(file))
  vim.fn.jobstart(cmd, {
    stdout_buffered = true,
    on_stdout = function(_, data)
      if not data or #data < 4 then return end
      
      local author, summary, time_str = "Unknown", "No commit", nil
      for _, l in ipairs(data) do
        if l:match("^author ") then author = l:gsub("^author ", "") end
        if l:match("^summary ") then summary = l:gsub("^summary ", "") end
        if l:match("^author%-time ") then time_str = l:gsub("^author%-time ", "") end
      end
      
      local date_str = ""
      if time_str then
        local timestamp = tonumber(time_str)
        if timestamp then
          date_str = os.date("%Y-%m-%d ", timestamp)
        end
      end
      
      -- Only draw if the toggle wasn't turned off while the async command ran
      if vim.g.git_blame_enabled then
        local text = string.format("  • %s%s (%s)", date_str, author, summary)
        vim.api.nvim_buf_set_extmark(0, blame_ns, line - 1, 0, {
          virt_text = { { text, "Comment" } },
          hl_mode = "combine",
        })
      end
    end,
  })
end

-- 3. Create a function to handle the toggle action
local function toggle_git_blame()
  vim.g.git_blame_enabled = not vim.g.git_blame_enabled
  if not vim.g.git_blame_enabled then
    -- Clear text immediately when turning off
    vim.api.nvim_buf_clear_namespace(0, blame_ns, 0, -1)
    print("Git Blame: Disabled")
  else
    -- Show text immediately for the current line when turning on
    show_git_blame()
    print("Git Blame: Enabled")
  end
end

-- 4. Map the toggle function to a shortcut (e.g., <leader>bt for Blame Toggle)
vim.keymap.set('n', '<leader>gbb', toggle_git_blame, { desc = 'Toggle Inline Git Blame' })

-- 5. Trigger updates as the cursor moves
vim.api.nvim_create_autocmd({ "CursorHold", "CursorMoved" }, {
  pattern = "*",
  callback = show_git_blame,
})

