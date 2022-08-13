require'nvim-treesitter.configs'.setup {
  ensure_installed = {
	"astro",
	"bash",
	"beancount",
	"bibtex",
	"c",
	"c_sharp",
	"clojure",
	"cmake",
	"comment",
	"commonlisp",
	"cooklang",
	"cpp",
	"css",
	"cuda",
	"dart",
	"dockerfile",
	"dot",
	"eex",
	"elixir",
	"elm",
	"elvish",
	"embedded_template",
	"erlang",
	"fennel",
	"fish",
	"foam",
	"fortran",
	"fusion",
	"gdscript",
	"gleam",
	"glimmer",
	"glsl",
	"go",
	"gomod",
	"gowork",
	"graphql",
	"hack",
	"haskell",
	"hcl",
	"heex",
	"help",
	"hjson",
	"hocon",
	"html",
	"http",
	"java",
	"javascript",
	"jsdoc",
	"json",
	"json5",
	"jsonc",
	"julia",
	"kotlin",
	"lalrpop",
	"latex",
	"ledger",
	"llvm",
	"lua",
	"m68k",
	"make",
	"markdown",
	"markdown_inline",
	"ninja",
	"nix",
	"norg",
	"ocaml",
	"ocaml_interface",
	"org",
	"pascal",
	"perl",
	"php",
	"pioasm",
	"prisma",
	"proto",
	"pug",
	"python",
	"ql",
	"qmljs",
	"query",
	"r",
	"racket",
	"rasi",
	"regex",
	"rego",
	"rnoweb",
	"rst",
	"ruby",
	"rust",
	"scala",
	"scheme",
	"scss",
	"slint",
	"solidity",
	"sparql",
	"sql",
	"supercollider",
	"surface",
	"svelte",
	"tiger",
	"tlaplus",
	"todotxt",
	"toml",
	"tsx",
	"turtle",
	"typescript",
	"v",
	"vala",
	"verilog",
	"vim",
	"vue",
	"wgsl",
	"yaml",
	"yang",
	"zig",
  }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { 'ruby' }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}

