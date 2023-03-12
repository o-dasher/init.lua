function ApplyColors(color)
    color = color or "tokyonight-night"

    vim.cmd.colorscheme(color)

    -- Highlights
    local hi_level = 0
    local applied_bg = "none"

    function ApplyHL(type)
        vim.api.nvim_set_hl(hi_level, type, { bg = applied_bg })
    end

    ApplyHL("Normal")
    ApplyHL("NormalFloat")
end

ApplyColors()
