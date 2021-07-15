-- Map leader key to space
vim.api.nvim_set_keymap("n", "<Leader>", "<Nop>",
                        { noremap = false, silent = false })
vim.g.mapleader = " "

-- Use Control-S for saving
vim.api.nvim_set_keymap("i", "<C-s>", "<C-o>:update<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-s>", ":update<CR>",
                        { noremap = true, silent = true })

-- Use Control-Q for quitting
vim.api.nvim_set_keymap("n", "<C-q>", ":q<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-q>", "<C-\\><C-n>:q<CR>",
                        { noremap = true, silent = true })

-- Open the current buffer in a new tab
vim.api.nvim_set_keymap("n", "<Leader>mw",
                        ":lua require('majjoha').open_current_as_new_tab()<CR>",
                        { noremap = true, silent = true })

-- Close the current tab
vim.api.nvim_set_keymap("n", "<Leader>cw", ":tabc<CR>",
                        { noremap = true, silent = true })

-- Keep the visual selection when indenting/outdenting
vim.api.nvim_set_keymap("x", ">", ">gv", { noremap = true })
vim.api.nvim_set_keymap("x", "<", "<gv", { noremap = true })

-- Navigate screen lines instead of file lines
vim.api.nvim_set_keymap("", "k", "gk", { noremap = true })
vim.api.nvim_set_keymap("", "j", "gj", { noremap = true })

-- Toggle NvimTree
vim.api.nvim_set_keymap("n", "<Leader>d", ":NvimTreeToggle<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>D", ":NvimTreeFindFile<CR>",
                        { noremap = true, silent = true })

-- Search the contents of the files in the current directory
vim.api.nvim_set_keymap("n", "<Leader>f", ":Rg<CR>",
                        { noremap = true, silent = true })

-- Search buffers
vim.api.nvim_set_keymap("n", "<Leader>bb", ":Buffers<CR>",
                        { noremap = true, silent = true })

-- Search files
vim.api.nvim_set_keymap("n", "<Leader>p", ":Files<CR>",
                        { noremap = true, silent = true })

-- Search commands
vim.api.nvim_set_keymap("n", "<Leader>cc", ":Commands<CR>",
                        { noremap = true, silent = true })

-- Search file types
vim.api.nvim_set_keymap("n", "<Leader>sf", ":Filetypes<CR>",
                        { noremap = true, silent = true })

-- Search help files
vim.api.nvim_set_keymap("n", "<Leader>h", ":Help<CR>",
                        { noremap = true, silent = true })

-- Remove search highlighting
vim.api.nvim_set_keymap("n", "<Leader><Leader>", ":let @/ = ''<CR>",
                        { noremap = true, silent = true })

-- Open vertical split
vim.api.nvim_set_keymap("n", "<Leader>v", ":vsp<CR>",
                        { noremap = true, silent = true })

-- Open horizontal split
vim.api.nvim_set_keymap("n", "<Leader>x", ":sp<CR>",
                        { noremap = true, silent = true })

-- Git-related mappings
vim.api.nvim_set_keymap("n", "<Leader>bc", ":Commits<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>gb", ":Git blame<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>gc", ":tab Git commit -v<CR>",
                        { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>gcb", ":Git checkout -b<Space>",
                        { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>gco",
                        ":call v:lua.fzf_search_branches()<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>gd", ":Gdiffsplit!<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>gr", ":Git rebase -i origin/main<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>gs", ":Git<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>gg", ":Git<Space>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>gpr", ":!git pr<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>gpp", ":Git pull<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ga", ":Gwrite<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>gl", ":tabe | terminal tig<CR>",
                        { noremap = true, silent = true })

-- Toggle comments
vim.api.nvim_set_keymap("x", "<Leader>/", ":Comment<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Leader>/", ":Comment<CR>", { silent = true })

-- Edit snippets for the current file type
vim.api.nvim_set_keymap("n", "<Leader>es",
                        ":NeoSnippetEdit -split -vertical<CR>",
                        { noremap = true, silent = true })

-- Open a terminal in a split window
vim.api.nvim_set_keymap("n", "<Leader>tv", ":vsp | term<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ts", ":sp | term<CR>",
                        { noremap = true, silent = true })

-- Search in visual selection
vim.api.nvim_set_keymap("x", "/", "<ESC>/\\%V", { noremap = true })

-- Alternate via vim-projectionist
vim.api.nvim_set_keymap("n", "<Tab>", ":A<CR>",
                        { noremap = true, silent = true })

-- Move up and down in completion menus using j and k
vim.api.nvim_set_keymap("i", "j", "v:lua.smart_j()",
                        { noremap = true, expr = true })
vim.api.nvim_set_keymap("i", "k", "v:lua.smart_k()",
                        { noremap = true, expr = true })

-- Accept the selected match using tab
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.smart_tab()",
                        { noremap = true, expr = true })

-- Test-related mappings
vim.api.nvim_set_keymap("n", "<Leader>rt", ":TestFile<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>rl", ":TestNearest<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>rs", ":TestSuite<CR>",
                        { noremap = true, silent = true })

-- Use ' instead of ` when navigating to the position of a mark
vim.api.nvim_set_keymap("n", "'", "`", { noremap = true })

-- Allow the file under the cursor to be opened even if it does not exist
vim.api.nvim_set_keymap("n", "<Leader>gf", ":e <cfile><CR>",
                        { noremap = true, silent = true })

-- Edit file
vim.api.nvim_set_keymap("n", "<Leader>ee", ":e<Space>", { noremap = true })

-- Sort visual selection
vim.api.nvim_set_keymap("x", "<Leader>ss", ":!sort<CR>",
                        { noremap = true, silent = true })

-- Go to the beginning and end of the line in command mode
vim.api.nvim_set_keymap("c", "<C-a>", "<Home>", { noremap = true })
vim.api.nvim_set_keymap("c", "<C-e>", "<End>", { noremap = true })

-- Replace instances of a word under the cursor (similar to multiple cursors)
vim.api.nvim_set_keymap("n", "<C-n>", "*Ncgn", { noremap = true })

-- Save and load sessions
vim.api.nvim_set_keymap("n", "<Leader>ms", ":mksession!<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ls", ":source Session.vim<CR>",
                        { noremap = true, silent = true })

vim.api.nvim_set_keymap("t", "<Esc>", "v:lua.smart_esc()",
                        { noremap = true, expr = true })

-- Emacs-style navigation in insert mode
vim.api.nvim_set_keymap("i", "<C-e>", "<C-o>$", {})
vim.api.nvim_set_keymap("i", "<C-a>", "<C-o>^", {})

-- Mappings for navigation the quickfix list
vim.api.nvim_set_keymap("n", "[q", ":cprevious<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]q", ":cnext<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "[Q", ":cfirst<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]Q", ":clast<CR>",
                        { noremap = true, silent = true })

-- Marginalia-related mappings
vim.api.nvim_set_keymap("n", "<Leader>mnn", ":MarginaliaNew<Space>",
                        { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>men", ":MarginaliaEdit<Space>",
                        { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>mln", ":MarginaliaList<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>mfb", ":MarginaliaFindBacklinks<CR>",
                        { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>mft",
                        ":MarginaliaFindTagReferences<Space>",
                        { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>mcw", ":MarginaliaConvertWordToTag<CR>",
                        { noremap = true, silent = true })

-- ALE-related mappings
vim.api.nvim_set_keymap("n", "<Leader>ad", ":ALEDetail<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>af", ":ALEFindReferences -relative<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ag", ":ALEGoToDefinition<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ah", ":ALEHover<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>ar", ":ALERename<CR>",
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-Space>", "<C-\\><C-O>:ALEComplete<CR>",
                        { noremap = true, silent = true })

-- Mimic smart_tab snippets behavior
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.smart_tab()", { expr = true })
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.smart_tab()", { expr = true })
