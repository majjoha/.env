-- Skip if ALE is not loaded
if not vim.g.loaded_ale then
  return
end

-- Redefine representation of warnings and errors
vim.g.ale_sign_error = "▍"
vim.g.ale_sign_warning = "▍"
vim.cmd([[
  highlight ALEError cterm=underline ctermfg=01
  highlight ALEWarning cterm=underline ctermfg=01
  highlight link ALEErrorSign DiffDelete
  highlight link ALEWarningSign DiffDelete
  highlight link ALEVirtualTextError DiffDelete
  highlight link ALEVirtualWarning DiffDelete
]])

vim.g.ale_lint_on_text_changed = "normal"
vim.g.ale_virtualtext_cursor = 1
vim.g.ale_virtualtext_prefix = "▎"
vim.g.ale_lint_on_insert_leave = 0
vim.g.ale_set_balloons = 1
vim.g.ale_fix_on_save = 1
vim.g.ale_floating_preview = 1
vim.g.ale_floating_window_border = { " ", " ", " ", " ", " ", " " }
vim.g.ale_hover_to_floating_preview = 1

-- Use ALE for completion
vim.g.ale_completion_enabled = 1
vim.opt.omnifunc = "ale#completion#OmniFunc"

vim.g.ale_fixers = {
  ["*"] = { "remove_trailing_lines" },
  css = { "prettier" },
  haskell = { "stylish-haskell" },
  javascript = { "eslint", "prettier" },
  json = { "jq" },
  lua = { "lua-format" },
  ruby = { "rubocop" },
  sh = { "shfmt" },
  typescript = { "eslint", "prettier" },
  typescriptreact = { "eslint", "prettier" },
}

vim.g.ale_linters = {
  haskell = { "hls", "hlint", "stack-build" },
  ruby = { "solargraph", "brakeman" },
}

vim.g.ale_linters_ignore = { javascript = { "tsserver" } }
