(import-macros {: transform-hl-groups} :hl-groups)

(local {: require-cterm} (require :palenight/_colors))

(local colors (require :palenight/colors/truecolor))
(local colors-cterm (require-cterm))

(transform-hl-groups colors colors-cterm
                     {;; ╔══════════════════════════════════════════════════════════╗
                      ;; ║                       Tree-sitter                        ║
                      ;; ╚══════════════════════════════════════════════════════════╝
                      "@annotation" {:fg :yellow}
                      "@attribute" {:fg :light_red}
                      "@boolean" {:fg :red :italic true}
                      "@character" {:fg :green}
                      "@character.special" {:fg :blue_purple}
                      "@comment" {:fg :comment :italic true}
                      "@comment.documentation" {:fg :special :italic true}
                      "@conditional" {:fg :purple}
                      "@constant" {:fg :cyan}
                      "@constant.builtin" {:fg :yellow}
                      "@constant.macro" {:fg :orange}
                      "@constructor" {:fg :white}
                      "@macro" {:fg :purple}
                      "@define" {:fg :purple}
                      "@exception" {:fg :purple}
                      "@field" {:fg :cyan}
                      "@float" {:fg :orange}
                      "@function" {:fg :blue}
                      "@function.builtin" {:fg :cyan}
                      "@function.call" {:fg :blue}
                      "@function.macro" {:fg :purple :italic true}
                      "@include" {:fg :blue}
                      "@keyword" {:fg :red}
                      "@keyword.function" {:fg :blue_purple}
                      "@keyword.return" {:fg :red}
                      "@keyword.operator" {:fg :purple}
                      "@operator" {:fg :purple}
                      "@label" {:fg :purple}
                      "@method" {:fg :blue}
                      "@method.call" {:fg :blue}
                      "@namespace" {:fg :blue_purple}
                      "@number" {:fg :orange}
                      "@parameter" {:fg :orange}
                      "@property" {:fg :cyan}
                      "@punctuation.bracket" {:fg :white}
                      "@punctuation.delimiter" {:fg :white}
                      "@punctuation.special" {:fg :white}
                      "@repeat" {:fg :purple}
                      "@storageclass" {:fg :yellow}
                      "@string" {:fg :green}
                      "@string.escape" {:fg :special}
                      "@string.regex" {:fg :green}
                      "@string.special" {:fg :special}
                      "@symbol" {:fg :red}
                      "@tag" {:fg :light_red}
                      "@tag.attribute" {:fg :yellow}
                      "@tag.delimiter" {:fg :white}
                      "@text.danger" {:fg :orange}
                      "@text.emphasis" {:italic true}
                      "@text.environment" {:fg :light_red}
                      "@text.environment.name" {:fg :cyan}
                      "@text.literal" {:fg :yellow}
                      "@text.reference" {:fg :cyan}
                      "@text.strike" {:strikethrough true}
                      "@text.strong" {:bold true}
                      "@text.title" {:fg :yellow :bold true}
                      "@text.underline" {:underline true}
                      "@text.warning" {:fg :yellow}
                      "@text.todo" {:fg :purple}
                      "@type" {:fg :yellow}
                      "@type.builtin" {:fg :orange}
                      "@type.qualifier" {:fg :yellow}
                      "@variable" {:fg :white}
                      "@variable.builtin" {:fg :orange}
                      ;; Make list chars ('*', '+' and '-'), as well as '>' to be colored specially
                      "@punctuation.special.markdown" {:link "@operator"}
                      ;; Shell arguments look ugly when not colored as regular text
                      "@parameter.bash" {:fg :white}
                      ;; JSON parser likes to be all different, coloring properties as "@label"
                      "@label.json" {:link "@property"}
                      ;; INI files should not be colored with text highlights
                      "@text.ini" {:link "@string"}
                      ;; Comment notes highlighting. (:TSInstall comment)
                      "@text.todo.comment" {:fg :purple}
                      "@text.note.comment" {:fg :white}
                      "@text.warning.comment" {:fg :yellow}
                      "@text.danger.comment" {:fg :red}
                      ;; ╔══════════════════════════════════════════════════════════╗
                      ;; ║                           LSP                            ║
                      ;; ╚══════════════════════════════════════════════════════════╝
                      :DiagnosticError {:fg :red}
                      :DiagnosticWarn {:fg :yellow}
                      :DiagnosticInfo {:fg :white}
                      :DiagnosticHint {:fg :special}
                      :DiagnosticDeprecated {:fg :comment :strikethrough true}
                      :DiagnosticVirtualTextError {:fg :red}
                      :DiagnosticVirtualTextWarn {:fg :yellow}
                      :DiagnosticVirtualTextInfo {:fg :white}
                      :DiagnosticVirtualTextHint {:fg :special}
                      :DiagnosticUnderlineError {:fg :red :underline true}
                      :DiagnosticUnderlineWarn {:fg :yellow :underline true}
                      :DiagnosticUnderlineInfo {:fg :white :underline true}
                      :DiagnosticUnderlineHint {:fg :special :underline true}
                      ;; ╔══════════════════════════════════════════════════════════╗
                      ;; ║                   LSP semantic tokens                    ║
                      ;; ╚══════════════════════════════════════════════════════════╝
                      "@lsp.type.variable" {:link "@variable"}
                      "@lsp.type.typeParameter" {}
                      "@lsp.type.enum" {:link "@type"}
                      "@lsp.type.enumMember" {:link "@constant"}
                      "@lsp.type.parameter" {:link "@parameter"}
                      "@lsp.type.namespace" {:link "@namespace"}
                      "@lsp.type.interface" {:link "@type"}
                      "@lsp.type.decorator" {:link "@type"}
                      "@lsp.type.property" {:link "@property"}
                      "@lsp.type.function" {:link "@function"}
                      "@lsp.type.comment" {:link "@comment"}
                      "@lsp.type.class" {:link "@type"}
                      "@lsp.type.struct" {:link "@type"}
                      "@lsp.type.method" {:link "@method"}
                      "@lsp.type.macro" {:link "@function.macro"}
                      "@lsp.type.type" {:link "@type"}
                      "@lsp.mod.readonly" {:link "@constant"}
                      "@lsp.mod.constant" {:link "@constant"}
                      "@lsp.mod.static" {:link "@constant"}
                      ;; Highlight Lua builtin modules as a namespace
                      "@lsp.mod.defaultLibrary.lua" {:link "@namespace.builtin"}
                      ;; Highlight Lua builtin functions as @function.builtin
                      "@lsp.typemod.function.defaultLibrary.lua" {:link "@function.builtin"}
                      ;; Highlight JS/TS `const` as variable, since they're often used interchangeably
                      ;;
                      ;; Article that explains the difference between `let` and `const`:
                      ;; https://www.joshwcomeau.com/javascript/the-const-deception/
                      "@lsp.mod.readonly.javascript" {:link "@lsp.type.variable"}
                      "@lsp.mod.readonly.typescript" {:link "@lsp.type.variable"}
                      ;; Fix `const x = () => {}` highlighting (@constant takes priority by default)
                      "@lsp.typemod.function.readonly.javascript" {:link "@lsp.type.function"}
                      "@lsp.typemod.function.readonly.typescript" {:link "@lsp.type.function"}
                      ;; Highlight builtin variables and objects with @x.builtin
                      "@lsp.typemod.variable.defaultLibrary.javascript" {:link "@variable.builtin"}
                      "@lsp.typemod.variable.defaultLibrary.typescript" {:link "@variable.builtin"}
                      "@lsp.typemod.class.defaultLibrary.javascript" {:link "@type.builtin"}
                      "@lsp.typemod.class.defaultLibrary.typescript" {:link "@type.builtin"}
                      ;; ╔══════════════════════════════════════════════════════════╗
                      ;; ║                  Built-in syntax groups                  ║
                      ;; ╚══════════════════════════════════════════════════════════╝
                      :Comment {:link "@comment"}
                      :Constant {:link "@constant"}
                      :String {:link "@string"}
                      :Character {:link "@string"}
                      :Number {:link "@number"}
                      :Boolean {:link "@boolean"}
                      :Float {:link "@float"}
                      ;; Identifier usually presumes a variable
                      :Identifier {:link "@symbol"}
                      :Function {:link "@function"}
                      :Statement {:fg :purple}
                      :Conditional {:link "@conditional"}
                      :Repeat {:link "@repeat"}
                      :Label {:link "@label"}
                      :Operator {:link "@operator"}
                      :Keyword {:link "@keyword"}
                      :Exception {:link "@exception"}
                      :PreProc {:link "@macro"}
                      :Include {:link "@include"}
                      :Define {:link "@define"}
                      :Macro {:link "@macro"}
                      :PreCondit {:link "@macro"}
                      :Type {:link "@type"}
                      :StorageClass {:link "@storageclass"}
                      :Structure {:link "@type"}
                      :Typedef {:link "@type"}
                      :Special {:fg :blue}
                      :SpecialChar {}
                      :Tag {:link "@tag"}
                      :Delimiter {:link "@punctuation.delimiter"}
                      :SpecialComment {:fg :special}
                      :Debug {}
                      :Underlined {:link "@text.underline"}
                      :Ignore {}
                      :Error {:link "DiagnosticError"}
                      :Todo {:link "@text.todo"}
                      ;; ╔══════════════════════════════════════════════════════════╗
                      ;; ║               Special highlights and menus               ║
                      ;; ╚══════════════════════════════════════════════════════════╝
                      :Conceal {}
                      :Cursor {:fg :black :bg :blue}
                      :CursorIM {}
                      :CursorColumn {:bg :cursor}
                      :CursorLine {:bg :cursor}
                      :Directory {:fg :blue}
                      :DiffAdd {:bg :green :fg :black}
                      :DiffChange {:bg :yellow :fg :black}
                      :DiffDelete {:bg :red :fg :black}
                      :DiffText {:bg :black :fg :yellow}
                      :ErrorMsg {:link "Error"}
                      :VertSplit {:fg :vertsplit}
                      :Folded {:bg :menu :fg :comment}
                      :FoldColumn {}
                      :SignColumn {}
                      :IncSearch {:fg :yellow :bg :comment}
                      :LineNr {:fg :line_number}
                      :CursorLineNr {}
                      :MatchParen {:fg :blue :underline true}
                      :ModeMsg {}
                      :MoreMsg {}
                      :NonText {:fg :comment}
                      :Normal {:fg :white :bg :black}
                      :Pmenu {:bg :menu}
                      :PmenuSel {:fg :black :bg :blue}
                      :PmenuSbar {:bg :special}
                      :PmenuThumb {:bg :white}
                      :Question {:fg :purple}
                      :Search {:fg :yellow :underline true :bold true}
                      :CurSearch {:fg :black :bg :yellow}
                      :SpecialKey {:fg :special}
                      :SpellBad {:fg :red :underline true}
                      :SpellCap {:fg :orange}
                      :SpellLocal {:fg :orange}
                      :SpellRare {:fg :orange}
                      :StatusLine {:fg :white :bg :menu}
                      :StatusLineNC {:fg :comment}
                      :TabLine {:fg :comment}
                      :TabLineFill {}
                      :TabLineSel {:fg :white}
                      :Title {:link "@text.title"}
                      :Visual {:bg :highlight}
                      :VisualNOS {:bg :highlight}
                      :WarningMsg {:fg :yellow}
                      :WildMenu {:fg :black :bg :blue}
                      ;; ╔══════════════════════════════════════════════════════════╗
                      ;; ║                Simple fallback highlights                ║
                      ;; ║                ──────────────────────────                ║
                      ;; ║   Don't rely on these highlights; use tree-sitter for    ║
                      ;; ║                  more accurate results                   ║
                      ;; ╚══════════════════════════════════════════════════════════╝
                      ;; ╭───────╮
                      ;; │ Shell │
                      ;; ╰───────╯
                      :shSet {:link "@function.builtin"}
                      :shStatement {:link "Statement"}
                      ;; ╭─────╮
                      ;; │ CSS │
                      ;; ╰─────╯
                      :cssTagName {:link "@type"}
                      :cssAttributeSelector {:link "@property"}
                      :cssAttrComma {:link "@punctuation.delimiter"}
                      :cssBraces {:link "@punctuation.delimiter"}
                      :cssClassName {:link "@property"}
                      :cssClassNameDot {:link "@property"}
                      :cssIdentifier {:link "@property"}
                      :cssSelectorOp {:link "@operator"}
                      :cssSelectorOp2 {:link "@operator"}
                      ;; ╭──────╮
                      ;; │ HTML │
                      ;; ╰──────╯
                      :htmlTagName {:link "@tag"}
                      :htmlArg {:link "@tag.attribute"}
                      :htmlTitle {:link "@text.title"}
                      :htmlLink {:link "@text.uri"}
                      :htmlSpecialTagName {:link "@tag"}
                      ;; `<` and `/>`
                      :htmlTag {:link "@punctuation.delimiter"}
                      :htmlEndTag {:link "@punctuation.delimiter"}
                      ;; ╭─────╮
                      ;; │ XML │
                      ;; ╰─────╯
                      :xmlTagName {:link "@tag"}
                      :xmlAttrib {:link "@tag.attribute"}
                      ;; `<` and `/>`
                      :xmlTag {:link "@punctuation.delimiter"}
                      :xmlEndTag {:link "@punctuation.delimiter"}
                      ;; ╭──────╮
                      ;; │ JSON │
                      ;; ╰──────╯
                      :jsonKeyword {:link "@property"}
                      :jsonBoolean {:link "@boolean"}
                      :jsonNumber {:link "@number"}
                      :jsonQuote {:link "@punctuation.delimiter"}
                      :jsonString {:link "@string"}
                      :jsonNull {:link "@constant.builtin"}
                      ;; Error handling in syntax files?! O_o
                      :jsonCommentError {:link "DiagnosticUnderlineError"}
                      :jsonMissingCommaError {:link "DiagnosticUnderlineError"}
                      :jsonNoQuotesError {:link "DiagnosticUnderlineError"}
                      :jsonNumError {:link "DiagnosticUnderlineError"}
                      :jsonStringSQError {:link "DiagnosticUnderlineError"}
                      :jsonSemicolonError {:link "DiagnosticUnderlineError"}
                      ;; ╭───────╮
                      ;; │ HJSON │
                      ;; ╰───────╯
                      :hjsonKeyword {:link "@property"}
                      ;; ╭──────╮
                      ;; │ YAML │
                      ;; ╰──────╯
                      :yamlBlockMappingKey {:link "@property"}
                      :yamlPlainScalar {:link "@string"}
                      :yamlKeyValueDelimiter {:link "@punctuation.delimiter"}
                      :yamlBlockCollectionItemStart {:link "@punctuation.delimiter"}
                      ;; ╭──────╮
                      ;; │ TOML │
                      ;; ╰──────╯
                      :tomlTable {:link "@type"}
                      :tomlKey {:link "@property"}
                      ;; ╭─────╮
                      ;; │ INI │
                      ;; ╰─────╯
                      :dosiniHeader {:link "@type"}
                      :dosiniLabel {:link "@property"}
                      ;; ╭──────────────╮
                      ;; │ Editorconfig │
                      ;; ╰──────────────╯
                      :editorconfigProperty {:link "@property"}
                      ;; ╭──────────╮
                      ;; │ Markdown │
                      ;; ╰──────────╯
                      :markdownHeadingDelimiter {:link "@text.title"}
                      :markdownCode {:link "@text.literal"}
                      :markdownCodeBlock {:link "@string"}
                      :markdownCodeDelimiter {:link "@punctuation.delimiter"}
                      :markdownRule {:link "@operator"}
                      :markdownHeadingRule {:link "@operator"}
                      :markdownJekyllFrontMatter {:link "@operator"}
                      :markdownOrderedListMarker {:link "@operator"}
                      :markdownListMarker {:link "@operator"}
                      :markdownId {:link "@text.reference"}
                      :markdownBlockquote {:link "@operator"}
                      :markdownItalic {:link "@text.emphasis"}
                      :markdownUrl {:link "@text.uri"}
                      :markdownIdDeclaration {:link "@text.reference"}
                      :markdownLinkText {:link "@text.reference"}
                      :markdownLinkDelimiter {:link "@punctuation.delimiter"}
                      ;; ╭───────────╮
                      ;; │ Gitconfig │
                      ;; ╰───────────╯
                      :gitconfigSection {:link "@type"}
                      :gitconfigVariable {:link "@property"}
                      :gitconfigAssignment {:link "@string"}
                      :gitConfigString {:link "@string"}
                      :gitConfigEscape {:link "@string.escape"}
                      ;; ╭──────╮
                      ;; │ Make │
                      ;; ╰──────╯
                      :makeCommands {:fg :white}
                      :makeSpecTarget {:link "@function.builtin"}
                      ;; ╭──────────────────╮
                      ;; │ Git highlighting │
                      ;; ╰──────────────────╯
                      ;; NOTE: I am not sure wether or not this is for a plugin, or if it's built-in highlights
                      ;; TODO: Make sure these colors are consistent
                      :gitcommitComment {:link "@comment"}
                      :gitcommitUnmerged {:fg :green}
                      :gitcommitOnBranch {}
                      :gitcommitBranch {:fg :purple}
                      :gitcommitDiscardedType {:fg :red}
                      :gitcommitSelectedType {:fg :green}
                      :gitcommitHeader {}
                      :gitcommitUntrackedFile {:fg :cyan}
                      :gitcommitDiscardedFile {:fg :red}
                      :gitcommitSelectedFile {:fg :green}
                      :gitcommitUnmergedFile {:fg :yellow}
                      :gitcommitFile {}
                      :gitcommitSummary {:fg :white}
                      :gitcommitOverflow {:fg :red}
                      :gitcommitNoBranch {:link :gitcommitBranch}
                      :gitcommitUntracked {:link :gitcommitComment}
                      :gitcommitDiscarded {:link :gitcommitComment}
                      :gitcommitSelected {:link :gitcommitComment}
                      :gitcommitDiscardedArrow {:link :gitcommitDiscardedFile}
                      :gitcommitSelectedArrow {:link :gitcommitSelectedFile}
                      :gitcommitUnmergedArrow {:link :gitcommitUnmergedFile}
                      ;; ╭──────────────────────────────────────────────────────────╮
                      ;; │                   Plugin highlighting                    │
                      ;; ╰──────────────────────────────────────────────────────────╯
                      ;; ╭───────────────────╮
                      ;; │ mhinz/vim-signify │
                      ;; ╰───────────────────╯
                      :SignifySignAdd {:fg :green}
                      :SignifySignChange {:fg :yellow}
                      :SignifySignDelete {:fg :red}
                      ;; ╭────────────────────────╮
                      ;; │ airblade/vim-gitgutter │
                      ;; ╰────────────────────────╯
                      :GitGutterAdd {:link :SignifySignAdd}
                      :GitGutterChange {:link :SignifySignChange}
                      :GitGutterDelete {:link :SignifySignDelete}
                      ;; ╭────────────────────╮
                      ;; │ tpope/vim-fugitive │
                      ;; ╰────────────────────╯
                      :diffAdded {:fg :green}
                      :diffRemoved {:fg :red}
                      ;; ╭─────────────────╮
                      ;; │ neomake/neomake │
                      ;; ╰─────────────────╯
                      :NeomakeWarningSign {:fg :yellow}
                      :NeomakeErrorSign {:fg :red}
                      :NeomakeInfoSign {:fg :blue}
                      ;; ╭──────────────────────╮
                      ;; │ liuchengxu/vista.vim │
                      ;; ╰──────────────────────╯
                      ;; TODO: Make sure these colors are consistent
                      :VistaBracket {:fg :purple}
                      :VistaChildrenNr {:fg :orange}
                      :VistaScope {:fg :blue_purple}
                      :VistaTag {:fg :purple}
                      :VistaPrefix {:fg :blue_purple}
                      :VistaParenthesis {:fg :purple}
                      :VistaColon {:fg :cyan}
                      :VistaIcon {:fg :cyan}
                      :VistaLineNr {:fg :comment}
                      :VistaArgs {:fg :comment}
                      :VistaKind {:fg :comment}
                      :VistaScopeKind {:fg :yellow}
                      ;; ╭───────────╮
                      ;; │ termdebug │
                      ;; ╰───────────╯
                      ;; TODO: Make sure these colors are consistent
                      :debugBreakpoint {:fg :blue_purple}
                      :debugPC {:bg :blue_purple :fg :black}
                      ;; ╭────────────────────────────────────────────────────╮
                      ;; │ https://gitlab.com/HiPhish/rainbow-delimiters.nvim │
                      ;; ╰────────────────────────────────────────────────────╯
                      :RainbowDelimiterRed {:fg :red}
                      :RainbowDelimiterYellow {:fg :yellow}
                      :RainbowDelimiterBlue {:fg :blue}
                      :RainbowDelimiterOrange {:fg :orange}
                      :RainbowDelimiterGreen {:fg :green}
                      :RainbowDelimiterViolet {:fg :purple}
                      :RainbowDelimiterCyan {:fg :cyan}
                      ;; ╭─────────────────────────╮
                      ;; │ lewis6991/gitsigns.nvim │
                      ;; ╰─────────────────────────╯
                      :GitSignsAdd {:fg :green}
                      :GitSignsChange {:fg :yellow}
                      :GitSignsDelete {:fg :red}
                      :GitSignsCurrentLineBlame {:fg :special}
                      ;; ╭─────────────────────────────────────╮
                      ;; │ lukas-reineke/indent-blankline.nvim │
                      ;; ╰─────────────────────────────────────╯
                      :IblIndent {:fg :line_number}
                      ;; ╭──────────────────────╮
                      ;; │ m-demare/hlargs.nvim │
                      ;; ╰──────────────────────╯
                      :Hlargs {:link "@lsp.type.parameter"}
                      ;; ╭───────────────────────────╮
                      ;; │ kevinhwang91/nvim-hlslens │
                      ;; ╰───────────────────────────╯
                      :HlSearchNear {:fg :yellow :bg :special :bold true}
                      :HlSearchLens {:fg :blue_purple :bg :menu}
                      :HlSearchLensNear {:fg :yellow :bg :menu :bold true}
                      ;; ╭──────────────────────╮
                      ;; │ chentoast/marks.nvim │
                      ;; ╰──────────────────────╯
                      :MarkSignHL {:fg :red}
                      :MarkSignNumHL {}
                      :MarkVirtTextHL {:fg :special}
                      ;; ╭──────────────────╮
                      ;; │ hrsh7th/nvim-cmp │
                      ;; ╰──────────────────╯
                      :CmpItemAbbrMatch {:fg :blue}
                      :CmpItemAbbrMatchFuzzy {:link "CmpItemAbbrMatch"}
                      :CmpItemAbbrDeprecated {:link "DiagnosticDeprecated"}
                      :CmpItemKindText {:link "@text"}
                      :CmpItemKindKeyword {:link "@keyword"}
                      :CmpItemKindVariable {:link "@lsp.type.variable"}
                      :CmpItemKindProperty {:link "@lsp.type.property"}
                      :CmpItemKindFunction {:link "@lsp.type.function"}
                      :CmpItemKindClass {:link "@lsp.type.class"}
                      :CmpItemKindStruct {:link "@lsp.type.struct"}
                      :CmpItemKindMethod {:link "@lsp.type.method"}
                      :CmpItemKindField {:link "@field"}
                      :CmpItemKindInterface {:link "@lsp.type.interface"}
                      :CmpItemKindConstructor {:link "@constructor"}
                      :CmpItemKindEnum {:link "@lsp.type.enum"}
                      :CmpItemKindEnumMember {:link "@lsp.type.enumMember"}
                      :CmpItemKindConstant {:link "@constant"}
                      :CmpItemKindTypeParameter {:link "@lsp.type.parameter"}
                      :CmpItemKindOperator {:link "@operator"}
                      :CmpItemKindModule {:link "@lsp.type.namespace"}
                      :CmpItemKindFile {:fg :dark_green}
                      :CmpItemKindFolder {:fg :green}
                      :CmpItemKindColor {:fg :dark_red}
                      :CmpItemKindSnippet {:fg :purple}
                      :CmpItemKindReference {:fg :cyan}
                      ;; ╭────────────────────────╮
                      ;; │ mawkler/modicator.nvim │
                      ;; ╰────────────────────────╯
                      :NormalMode {:fg :purple}
                      :TerminalMode {:fg :purple}
                      :TerminalNormalMode {:fg :purple}
                      :CommandMode {:fg :purple}
                      :InsertMode {:fg :blue}
                      :VisualMode {:fg :cyan}
                      :SelectMode {:fg :cyan}
                      :ReplaceMode {:fg :green}})
