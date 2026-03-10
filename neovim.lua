return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#000000",
                bg_dark = "#000000",
                bg_highlight = "#6B5B95",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#f3e1b9",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#d4c4a0",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#6B5B95",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#b02922",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#f1a11d",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#f1a11d",
                -- green: Comments, strings, success states, git additions
                green = "#31b192",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#59d8e6",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#0987d0",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#c172d4",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#c172d4",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
