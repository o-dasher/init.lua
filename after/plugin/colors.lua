function ApplyColors(color) 
	color = color;
	vim.cmd.colorscheme(color)

	-- Highlights

	local hi_level = 0
	local applied_bg = "none"

	function apply_hl(type)
		vim.api.nvim_set_hl(hi_level, type, { bg = applied_bg }) 
	end

	apply_hl("Normal")
	apply_hl("NormalFloat")
end

ApplyColors()
