local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({ buffer = bufnr })
end)


-- using mason
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        lsp.default_setup,
    },
})


local function isempty(s)
    return s == nil or s == ""
end
local function use_if_defined(val, fallback)
    return val ~= nil and val or fallback
end


-- custom python provider
local conda_prefix = os.getenv("CONDA_PREFIX")
if not isempty(conda_prefix) then
    vim.g.python_host_prog = use_if_defined(vim.g.python_host_prog, conda_prefix .. "/bin/python")
    vim.g.python3_host_prog = use_if_defined(vim.g.python3_host_prog, conda_prefix .. "/bin/python")
else
    vim.g.python_host_prog = use_if_defined(vim.g.python_host_prog, "python")
    vim.g.python3_host_prog = use_if_defined(vim.g.python3_host_prog, "python3")
end




lsp.setup()


local cmp = require('cmp')

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['ll'] = cmp.mapping.confirm({ select = true }),
    ['<CR>'] = cmp.mapping.confirm({ select = false}),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil
cmp_mappings['<C-y>'] = nil

cmp.setup({
    mapping = cmp_mappings
})

