require("ethan.set")
require("ethan.remap")
require("ethan.lazy_init")

vim.api.nvim_create_autocmd("FileType", {
    pattern = "terraform",
    callback = function()
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
    end,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    end
})
