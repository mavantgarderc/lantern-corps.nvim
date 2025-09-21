local g = vim.g

local M = {}

M.setup = function(opts)
	opts = opts or {}
	g.lantern_corps = opts.corps or "green"
	g.lantern_contrast = opts.contrast or "high"
	g.lantern_variant = opts.variant or "normal" -- 'normal' or 'corpses'
end

return M
