
require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers {
  ["luau_lsp"] = function()
    require("lspconfig").luau_lsp.setup { 
	    sourcemap = {
		    enable = true, -- enable sourcemap generation
		    autogenerate = true, -- auto generate sourcemap when saving/deleting buffers
	    },
	    server = {
		    types = {
			    roblox = true, -- enable roblox api
		    },
	    },
    }
  end,
}
