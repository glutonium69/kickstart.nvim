return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_compiler_latexmk = {
      options = {
        '-lualatex', -- Use lualatex as the engine
        '-synctex=1', -- SyncTeX support
        '-interaction=nonstopmode', -- Continue compiling even if errors are found
      },
    }
    vim.g.vimtex_view_method = 'general'
  end,
}
