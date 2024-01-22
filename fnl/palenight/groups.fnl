(import-macros {: transform-hl-groups} :hl-groups)

(local {: require-cterm} (require :palenight/_colors))

(local colors (require :palenight/colors/truecolor))
(local colors-cterm (require-cterm))

(transform-hl-groups colors colors-cterm
  {;; ╔══════════════════════════════════════════════════════════╗
   ;; ║                       Tree-sitter                        ║
   ;; ╚══════════════════════════════════════════════════════════╝
   ;; ╭─────────────╮
   ;; │ Identifiers │
   ;; ╰─────────────╯
   "@variable" {:fg :white}
   "@variable.builtin" {:fg :orange}
   "@variable.parameter" {:fg :orange}
   "@variable.member" {:fg :cyan}
   "@constant" {:fg :cyan}
   "@constant.builtin" {:fg :yellow}
   "@constant.macro" {:fg :orange}
   "@module" {:fg :blue_purple}
   "@module.builtin" {:fg :blue_purple}
   "@label" {:fg :purple}
   ;; ╭──────────╮
   ;; │ Literals │
   ;; ╰──────────╯
   "@string" {:fg :green}
   "@string.documentation" {:fg :dark_green}
   "@string.regexp" {:fg :green}
   ;; TODO: Audit @string.special.* highlights to be correct
   "@string.escape" {:fg :special}
   "@string.special" {:fg :special}
   "@string.special.symbol" {:fg :white}
   "@string.special.url" {:fg :dark_green :underline true}
   "@string.special.path" {:fg :dark_green}
   "@character" {:fg :green}
   "@character.special" {:fg :blue_purple}
   "@boolean" {:fg :red :italic true}
   "@number" {:fg :orange}
   "@number.float" {:fg :orange}
   ;; ╭───────╮
   ;; │ Types │
   ;; ╰───────╯
   "@type" {:fg :yellow}
   "@type.builtin" {:fg :orange}
   "@type.definition" {:fg :yellow}
   "@type.qualifier" {:fg :yellow}
   "@attribute" {:fg :light_red}
   "@property" {:fg :cyan}
   ;; ╭───────────╮
   ;; │ Functions │
   ;; ╰───────────╯
   "@function" {:fg :blue}
   "@function.builtin" {:fg :cyan}
   "@function.call" {:fg :blue}
   "@function.macro" {:fg :purple :italic true}
   "@function.method" {:fg :blue}
   "@function.method.call" {:fg :blue}
   ;; TODO: Make sure @constructor is correctly highlighted
   "@constructor" {:fg :white}
   "@operator" {:fg :purple}
   ;; ╭──────────╮
   ;; │ Keywords │
   ;; ╰──────────╯
   "@keyword" {:fg :red}
   ;; TODO: Experiment with colors for @keyword.coroutine
   "@keyword.coroutine" {:fg :dark_red}
   "@keyword.function" {:fg :blue_purple}
   "@keyword.operator" {:fg :purple}
   "@keyword.import" {:fg :red}
   ;; TODO: Make sure @keyword.storage is correctly highlighted
   "@keyword.storage" {:fg :yellow}
   "@keyword.repeat" {:fg :purple}
   "@keyword.return" {:fg :red}
   "@keyword.debug" {:fg :purple}
   "@keyword.exception" {:fg :red}
   "@keyword.conditional" {:fg :purple}        ; keywords related to conditionals (e.g. `if` / `else`)
   "@keyword.conditional.ternary" {:fg :purple} ; ternary operator (e.g. `?` / `:`)
   "@keyword.directive" {:fg :purple}
   "@keyword.directive.define" {:fg :purple}
   ;; ╭─────────────╮
   ;; │ Punctuation │
   ;; ╰─────────────╯
   "@punctuation.delimiter" {:fg :white}
   "@punctuation.bracket" {:fg :white}
   "@punctuation.special" {:fg :white}
   ;; ╭──────────╮
   ;; │ Comments │
   ;; ╰──────────╯
   "@comment" {:fg :comment :italic true}
   "@comment.documentation" {:fg :special}
   "@comment.error" {:fg :red}
   "@comment.warning" {:fg :yellow}
   "@comment.hint" {:fg :white}
   "@comment.info" {:fg :cyan}
   "@comment.todo" {:fg :purple}
   ;; ╭────────╮
   ;; │ Markup │
   ;; ╰────────╯
   "@markup.strong" {:bold true}
   "@markup.italic" {:italic true}
   "@markup.strikethrough" {:strikethrough true}
   "@markup.underline" {:underline true}
   "@markup.heading" {:fg :yellow :bold true}
   "@markup.quote" {:fg :white}         ; block quotes
   "@markup.math" {:fg :blue}          ; math environments (e.g. `$ ... $` in LaTeX)
   "@markup.environment" {:fg :blue}   ; environments (e.g. in LaTeX)
   "@markup.link" {:fg :cyan}          ; text references, footnotes, citations, etc.
   "@markup.link.label" {:fg :blue}     ; link, reference descriptions
   "@markup.link.url" {:underline true}       ; URL-style links
   "@markup.raw" {:fg :blue_purple}            ; literal or verbatim text (e.g., inline code)
   "@markup.raw.block" {:fg :green}     ; literal or verbatim text as a stand-alone block
   "@markup.list" {:fg :purple}          ; list markers
   "@markup.list.checked" {:fg :green}  ; checked todo-style list markers
   "@markup.list.unchecked" {:fg :yellow} ; unchecked todo-style list markers
   "@diff.plus" {:bg :green :fg :black}
   "@diff.minus" {:bg :red :fg :black}
   "@diff.delta" {:bg :yellow :fg :black}
   "@tag" {:fg :light_red}           ; XML-style tag names (and similar)
   "@tag.attribute" {:fg :yellow} ; XML-style tag attributes
   "@tag.delimiter" {:fg :white} ; XML-style tag delimiters
   ;; ╭───────────────────────────╮
   ;; │ Non-highlighting captures │
   ;; ╰───────────────────────────╯
   "@none" {:fg :white :bg :black}    ; completely disable the highlight
   ;; TODO: Figure out what to do with this
   "@conceal" {} ; captures that are only meant to be concealed
   "@spell" {}   ; for defining regions to be spellchecked
   "@nospell" {} ; for defining regions that should NOT be spellchecked
   ;; ╭──────────────────────────────╮
   ;; │ Filetype-specific highlights │
   ;; ╰──────────────────────────────╯
   ;; (Shell) Shell arguments are just text
   "@variable.parameter.bash" {:fg :white}
   ;; (Markdown) Special characters (`>`, `---`, etc.)
   "@punctuation.special.markdown" {:link "@keyword"}
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
   "@lsp.type.parameter" {:link "@variable.parameter"}
   "@lsp.type.namespace" {:link "@module"}
   "@lsp.type.interface" {:link "@type"}
   "@lsp.type.decorator" {:link "@type"}
   "@lsp.type.property" {:link "@property"}
   "@lsp.type.function" {:link "@function"}
   "@lsp.type.comment" {:link "@comment"}
   "@lsp.type.class" {:link "@type"}
   "@lsp.type.struct" {:link "@type"}
   "@lsp.type.method" {:link "@function.method"}
   "@lsp.type.macro" {:link "@function.macro"}
   "@lsp.type.type" {:link "@type"}
   "@lsp.typemod.comment.documentation" {:link "@comment.documentation"}
   ;; Constant highlight groups have higher priority, so we only target
   ;; "variable" constants in order to avoid highlighting constant functions as constants,
   ;; since that would be quite misleading
   "@lsp.typemod.variable.readonly" {:link "@constant"}
   "@lsp.typemod.variable.constant" {:link "@constant"}
   "@lsp.typemod.variable.static" {:link "@constant"}
   ;; (Lua) Builtin modules (math, io, etc.)
   "@lsp.mod.defaultLibrary.lua" {:link "@module.builtin"}
   ;; (Lua) Builtin functions (unpack)
   "@lsp.typemod.function.defaultLibrary.lua" {:link "@function.builtin"}
   ;; (JS/TS) Builtin variables (console, document, etc.)
   "@lsp.typemod.variable.defaultLibrary.javascript" {:link "@variable.builtin"}
   "@lsp.typemod.variable.defaultLibrary.typescript" {:link "@variable.builtin"}
   ;; (JS/TS) Builtin objects (Object, Array, etc.)
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
   :Float {:link "@number.float"}
   ;; Identifier usually presumes a variable
   :Identifier {:link "@variable"}
   :Function {:link "@function"}
   :Statement {:fg :purple}
   :Conditional {:link "@keyword.conditional"}
   :Repeat {:link "@keyword.repeat"}
   :Label {:link "@label"}
   :Operator {:link "@operator"}
   :Keyword {:link "@keyword"}
   :Exception {:link "@keyword.exception"}
   :PreProc {:link "@macro"}
   :Include {:link "@keyword.import"}
   :Define {:link "@keyword.directive.define"}
   :Macro {:link "@macro"}
   :PreCondit {:link "@macro"}
   :Type {:link "@type"}
   :StorageClass {:link "@keyword.storage"}
   :Structure {:link "@type"}
   :Typedef {:link "@type"}
   :Special {:fg :blue}
   :SpecialChar {}
   :Tag {:link "@tag"}
   :Delimiter {:link "@punctuation.delimiter"}
   :SpecialComment {:fg :special}
   :Debug {}
   :Underlined {:link "@markup.underline"}
   :Ignore {}
   :Error {:link "DiagnosticError"}
   :Todo {:link "@comment.todo"}
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
   :NormalFloat {:bg :menu}
   :FloatBorder {:bg :menu}
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
   :Title {:link "@markup.heading"}
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
   :htmlTitle {:link "@markup.heading"}
   :htmlLink {:link "@markup.link.url"}
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
   :markdownHeadingDelimiter {:link "@markup.heading"}
   :markdownCode {:link "@markup.raw"}
   :markdownCodeBlock {:link "@string"}
   :markdownCodeDelimiter {:link "@punctuation.delimiter"}
   :markdownRule {:link "@operator"}
   :markdownHeadingRule {:link "@operator"}
   :markdownJekyllFrontMatter {:link "@operator"}
   :markdownOrderedListMarker {:link "@operator"}
   :markdownListMarker {:link "@operator"}
   :markdownId {:link "@markup.link"}
   :markdownBlockquote {:link "@operator"}
   :markdownItalic {:link "@markup.italic"}
   :markdownUrl {:link "@markup.link.url"}
   :markdownIdDeclaration {:link "@markup.link"}
   :markdownLinkText {:link "@markup.link"}
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
   :CmpItemKindText {:link "Normal"}
   :CmpItemKindKeyword {:link "@keyword"}
   :CmpItemKindVariable {:link "@lsp.type.variable"}
   :CmpItemKindProperty {:link "@lsp.type.property"}
   :CmpItemKindFunction {:link "@lsp.type.function"}
   :CmpItemKindClass {:link "@lsp.type.class"}
   :CmpItemKindStruct {:link "@lsp.type.struct"}
   :CmpItemKindMethod {:link "@lsp.type.method"}
   :CmpItemKindField {:link "@variable.member"}
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
   ;; ╭─────────────────────╮
   ;; │ cbochs/portal.nvim  │
   ;; ╰─────────────────────╯
   :PortalLabel {:link "CurSearch"}
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
