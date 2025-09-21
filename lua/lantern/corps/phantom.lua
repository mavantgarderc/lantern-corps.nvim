local util = require('lantern.util')

-- Dynamic blend: Base white, tint randomly from spectrum
local spectrum = {'#8B0000', '#FFA500', '#FFD700', '#008000', '#87CEEB', '#4B0082', '#FF69B4'}  -- Core colors
local random_tint = spectrum[math.random(1, #spectrum)]

return {
  highlights = {
    Normal = { bg = '#000000', fg = util.blend('#F5F5F5', random_tint, 0.3) },  -- Tinted white
    Comment = { fg = '#4B0082' },
    Keyword = { fg = util.blend('#F5F5F5', random_tint, 0.3), bold = true },
    String = { fg = '#FF69B4' },
    Error = { fg = random_tint, undercurl = true },  -- Random counter
    LineNr = { fg = '#333333' },
    CursorLine = { bg = util.blend('#F5F5F5', random_tint, 0.3) },
    StatusLine = { bg = util.blend('#F5F5F5', random_tint, 0.3), fg = '#000000' },
    -- Treesitter
    ['@keyword'] = { fg = util.blend('#F5F5F5', random_tint, 0.3) },
    -- LSP
    DiagnosticError = { fg = random_tint },
    -- Diff
    DiffAdd = { bg = '#008000' },
    DiffDelete = { bg = '#8B0000' },
  }
}
