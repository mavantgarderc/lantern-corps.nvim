local g = vim.g
local cmd = vim.cmd
local o = vim.o
local api = vim.api

local M = {}

M.setup = function(opts)
  opts = opts or {}
  g.lantern_corps = opts.corps or 'green'
  g.lantern_contrast = opts.contrast or 'high'
  g.lantern_variant = opts.variant or 'normal'  -- 'normal' or 'corpses'
end

-- Load sub-theme based on config
function M.load()
  local corps = g.lantern_corps
  local theme_file = require('lantern.corps.' .. corps)
  -- Apply corpses twist if enabled
  if g.lantern_variant == 'corpses' then
    theme_file = M.desaturate(theme_file)  -- Helper to darken/desaturate
  end
  M.set_highlights(theme_file.highlights)
end

-- Helper to set highlights
function M.set_highlights(hl)
  cmd('hi clear')
  o.termguicolors = true
  g.colors_name = 'lantern-' .. g.lantern_corps
  for group, props in pairs(hl) do
    api.nvim_set_hl(0, group, props)
  end
end

-- Desaturate for corpses mode (simple example: lower saturation by blending with black/gray)
function M.desaturate(theme)
  local util = require('lantern.util')
  for _, props in pairs(theme.highlights) do
    if props.fg then props.fg = util.blend(props.fg, '#111111', 0.5) end
    if props.bg then props.bg = util.blend(props.bg, '#333333', 0.7) end
  end
  return theme
end

return M
