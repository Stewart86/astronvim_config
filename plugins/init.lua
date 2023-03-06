-- You can disable default plugins as follows:
-- ["goolord/alpha-nvim"] = { disable = true },

-- You can also add new plugins here as well:
-- Add plugins, the packer syntax without the "use"
-- { "andweeb/presence.nvim" },
-- {
--   "ray-x/lsp_signature.nvim",
--   event = "BufRead",
--   config = function()
--     require("lsp_signature").setup()
--   end,
-- },

-- We also support a key value style plugin definition similar to NvChad:
-- ["ray-x/lsp_signature.nvim"] = {
--   event = "BufRead",
--   config = function()
--     require("lsp_signature").setup()
--   end,
-- },

return {
    {
        "ellisonleao/gruvbox.nvim",
        as = "gruvbox",
        config = function()
            require("gruvbox").setup {
                transparent_mode = true,
                overrides = {
                    LineNr = {
                        fg = "#9f5a00",
                    },
                    CursorLine = {
                        bg = "NONE",
                    },
                },
            }
        end,
    },
    ["eandrju/cellular-automaton.nvim"] = { opt = true, cmd = "CellularAutomaton" },
    {
        "kylechui/nvim-surround",
        config = function() require("nvim-surround").setup() end,
    },
    {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function() require("todo-comments").setup {} end,
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        require("treesitter-context").setup(),
    },
    {
        "gelguy/wilder.nvim",
        config = function()
            local wilder = require "wilder"
            wilder.setup {
                modes = { ":", "/", "?" },
            }
            wilder.set_option(
                "renderer",
                wilder.popupmenu_renderer {
                    highlighter = wilder.basic_highlighter(),
                    left = { " ", wilder.popupmenu_devicons() },
                    right = { " ", wilder.popupmenu_scrollbar() },
                }
            )
        end,
    },
    {
        "kevinhwang91/nvim-ufo",
        requires = "kevinhwang91/promise-async",
        require("ufo").setup {
            fold_virt_text_handler = function(virtText, lnum, endLnum, width, truncate)
                local newVirtText = {}
                local suffix = ("  %d "):format(endLnum - lnum)
                local sufWidth = vim.fn.strdisplaywidth(suffix)
                local targetWidth = width - sufWidth
                local curWidth = 0
                for _, chunk in ipairs(virtText) do
                    local chunkText = chunk[1]
                    local chunkWidth = vim.fn.strdisplaywidth(chunkText)
                    if targetWidth > curWidth + chunkWidth then
                        table.insert(newVirtText, chunk)
                    else
                        chunkText = truncate(chunkText, targetWidth - curWidth)
                        local hlGroup = chunk[2]
                        table.insert(newVirtText, { chunkText, hlGroup })
                        chunkWidth = vim.fn.strdisplaywidth(chunkText)
                        -- str width returned from truncate() may less than 2nd argument, need padding
                        if curWidth + chunkWidth < targetWidth then
                            suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
                        end
                        break
                    end
                    curWidth = curWidth + chunkWidth
                end
                table.insert(newVirtText, { suffix, "MoreMsg" })
                return newVirtText
            end,
            provider_selector = function(bufnr, filetype, buftype) return { "treesitter", "indent" } end,
            enable_get_fold_virt_text = true,
        },
    },
    -- FIXME:
    -- {
    --   "ray-x/lsp_signature.nvim",
    --   config = function() require("lsp_signature.nvim").setup() end,
    -- },
}
