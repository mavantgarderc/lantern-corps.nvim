local M = {}

-- Simple hex blend (alpha 0-1)
function M.blend(hex1, hex2, alpha)
	local r1, g1, b1 = tonumber(hex1:sub(2, 3), 16), tonumber(hex1:sub(4, 5), 16), tonumber(hex1:sub(6, 7), 16)
	local r2, g2, b2 = tonumber(hex2:sub(2, 3), 16), tonumber(hex2:sub(4, 5), 16), tonumber(hex2:sub(6, 7), 16)
	local r = math.floor(r1 * (1 - alpha) + r2 * alpha)
	local g = math.floor(g1 * (1 - alpha) + g2 * alpha)
	local b = math.floor(b1 * (1 - alpha) + b2 * alpha)
	return string.format("#%02x%02x%02x", r, g, b)
end

-- 16-color terminal palette (fallback for non-truecolor)
M.terminal_palette = {
	[0] = "#000000",
	[1] = "#8B0000",
	[2] = "#008000", -- etc., map to Corps colors
	-- Fill with your primaries for Red=1, Green=2, etc.
}

return M
