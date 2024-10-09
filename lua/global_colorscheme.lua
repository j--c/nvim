local M = {}

M.load_gruvbox = function()
    require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
            strings = true,
            emphasis = true,
            comments = true,
            operators = false,
            folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
    })
    vim.cmd("colorscheme gruvbox")
end

M.load_onedark = function()
    require('onedark').load()
    require('onedark').setup  {
        -- Main options --
        style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
        transparent = true,  -- Show/hide background
        term_colors = true, -- Change terminal color as per the selected theme style
        ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
        cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

        -- toggle theme style ---
        toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
        toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

        -- Change code style ---
        -- Options are italic, bold, underline, none
        -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
        code_style = {
            comments = 'italic',
            keywords = 'none',
            functions = 'none',
            strings = 'none',
            variables = 'none'
        },

        -- Lualine options --
        lualine = {
            transparent = false, -- lualine center bar transparency
        },

        -- Custom Highlights --
        colors = {}, -- Override default colors
        highlights = {}, -- Override highlight groups

        -- Plugins Config --
        diagnostics = {
            darker = true, -- darker colors for diagnostic
            undercurl = true,   -- use undercurl instead of underline for diagnostics
            background = true,    -- use background color for virtual text
        },
    }
end

M.load_material = function()
    require('material').setup({

        contrast = {
            terminal = false, -- Enable contrast for the built-in terminal
            sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
            floating_windows = false, -- Enable contrast for floating windows
            cursor_line = false, -- Enable darker background for the cursor line
            lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
            non_current_windows = false, -- Enable contrasted background for non-current windows
            filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
        },

        styles = { -- Give comments style such as bold, italic, underline etc.
            comments = { --[[ italic = true ]] },
            strings = { --[[ bold = true ]] },
            keywords = { --[[ underline = true ]] },
            functions = { --[[ bold = true, undercurl = true ]] },
            variables = {},
            operators = {},
            types = {},
        },

        plugins = { -- Uncomment the plugins that you use to highlight them
            -- Available plugins:
            -- "coc",
            -- "colorful-winsep",
            -- "dap",
            -- "dashboard",
            -- "eyeliner",
            -- "fidget",
            -- "flash",
            -- "gitsigns",
            -- "harpoon",
            -- "hop",
            -- "illuminate",
            -- "indent-blankline",
            -- "lspsaga",
            -- "mini",
            -- "neogit",
            -- "neotest",
            -- "neo-tree",
            -- "neorg",
            -- "noice",
            -- "nvim-cmp",
            -- "nvim-navic",
            -- "nvim-tree",
            -- "nvim-web-devicons",
            -- "rainbow-delimiters",
            -- "sneak",
            -- "telescope",
            -- "trouble",
            -- "which-key",
            -- "nvim-notify",
        },

        disable = {
            colored_cursor = false, -- Disable the colored cursor
            borders = false, -- Disable borders between vertically split windows
            background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
            term_colors = false, -- Prevent the theme from setting terminal colors
            eob_lines = false -- Hide the end-of-buffer lines
        },

        high_visibility = {
            lighter = false, -- Enable higher contrast text for lighter style
            darker = false -- Enable higher contrast text for darker style
        },

        lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

        async_loading = true, -- Load parts of the theme asynchronously for faster startup (turned on by default)

        custom_colors = nil, -- If you want to override the default colors, set this to a function

        custom_highlights = {}, -- Overwrite highlights with your own
    })
    vim.g.material_style = "darker"
    vim.cmd("colorscheme material")
end

return M
