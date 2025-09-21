-- Unified: Blend spectrum (e.g., comments Indigo, keywords Green, errors rotate counters)
local util = require('lantern.util')

local highlights = {
  Normal = { bg = '#000000', fg = '#F5F5F5' },  -- Black bg, White fg for life/death balance
  Comment = { fg = '#4B0082' },  -- Indigo compassion
  Keyword = { fg = '#008000', bold = true },  -- Green willpower
  String = { fg = '#FF69B4' },  -- Violet love
  Error = { fg = '#FFD700', undercurl = true },  -- Yellow fear for warnings, but rotate per config
  LineNr = { fg = '#808080' },  -- Grey sorrow dim
  CursorLine = { bg = '#87CEEB' },  -- Blue hope glow
  StatusLine = { bg = util.blend('#8B0000', '#FF69B4', 0.5) },  -- Gradient red-violet
  -- Treesitter
  ['@keyword'] = { fg = '#008000' },
  -- LSP
  DiagnosticError = { fg = '#8B0000', undercurl = true },  -- Red rage, but use counter if corps set
  -- More groups: Add as needed (e.g., DiffAdd = { bg = '#008000' })
}

-- Adjust for contrast
if vim.g.lantern_contrast == 'low' then
  for _, props in pairs(highlights) do
    if props.fg then props.fg = util.blend(props.fg, '#555555', 0.3) end  -- Soften
  end
end

-- Terminal colors (16-color)
for i = 0, 15 do
  vim.g['terminal_color_' .. i] = util.terminal_palette[i] or '#FFFFFF'
end

require('lantern').set_highlights(highlights)
