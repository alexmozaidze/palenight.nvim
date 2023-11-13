(local c (require :palenight/colors))

{;; Syntax Groups
 :Comment {:fg c.comment :italic true}
 :Constant {:fg c.cyan}
 :String {:fg c.green}
 :Character {:fg c.green}
 :Number {:fg c.orange}
 :Boolean {:fg c.red}
 :Float {:fg c.orange}
 :Identifier {:fg c.red}
 :Function {:fg c.blue}
 :Statement {:fg c.purple}
 :Conditional {:fg c.purple}
 :Repeat {:fg c.purple}
 :Label {:fg c.purple}
 :Operator {:fg c.cyan}
 :Keyword {:fg c.red}
 :Exception {:fg c.purple}
 :PreProc {:fg c.yellow}
 :Include {:fg c.blue}
 :Define {:fg c.purple}
 :Macro {:fg c.purple}
 :PreCondit {:fg c.yellow}
 :Type {:fg c.yellow}
 :StorageClass {:fg c.yellow}
 :Structure {:fg c.yellow}
 :Typedef {:fg c.yellow}
 :Special {:fg c.blue}
 :SpecialChar {}
 :Tag {}
 :Delimiter {}
 :SpecialComment {:fg c.special}
 :Debug {}
 :Underlined {:underline true}
 :Ignore {}
 :Error {:fg c.red}
 :Todo {:fg c.purple}
 ;; Highlight hls
 :ColorColumn {:bg c.cursor}
 :Conceal {}
 :Cursor {:fg c.black :bg c.blue}
 :CursorIM {}
 :CursorColumn {:bg c.cursor}
 :CursorLine {:bg c.cursor}
 :Directory {:fg c.blue}
 :DiffAdd {:bg c.green :fg c.black}
 :DiffChange {:bg c.yellow :fg c.black}
 :DiffDelete {:bg c.red :fg c.black}
 :DiffText {:bg c.black :fg c.yellow}
 :ErrorMsg {:fg c.red}
 :VertSplit {:fg c.vertsplit}
 :Folded {:bg c.cursor :fg c.comment}
 :FoldColumn {}
 :SignColumn {}
 :IncSearch {:fg c.yellow :bg c.comment}
 :LineNr {:fg c.line_number}
 :CursorLineNr {}
 :MatchParen {:fg c.blue :underline true}
 :ModeMsg {}
 :MoreMsg {}
 :NonText {:fg c.comment}
 :Normal {:fg c.white :bg c.black}
 :Pmenu {:bg c.menu}
 :PmenuSel {:fg c.black :bg c.blue}
 :PmenuSbar {:bg c.special}
 :PmenuThumb {:bg c.white}
 :Question {:fg c.purple}
 :Search {:fg c.black :bg c.yellow}
 :SpecialKey {:fg c.special}
 :SpellBad {:fg c.red :underline true}
 :SpellCap {:fg c.orange}
 :SpellLocal {:fg c.orange}
 :SpellRare {:fg c.orange}
 :StatusLine {:fg c.white :bg c.cursor}
 :StatusLineNC {:fg c.comment}
 :TabLine {:fg c.comment}
 :TabLineFill {}
 :TabLineSel {:fg c.white}
 :Title {:fg c.green}
 :Visual {:bg c.highlight}
 :VisualNOS {:bg c.highlight}
 :WarningMsg {:fg c.yellow}
 :WildMenu {:fg c.black :bg c.blue}
 ;; Language-specific hls
 ;; Docker
 :dockerfileKeyword {:fg c.purple}
 ;; Shell
 :shSet {:fg c.cyan}
 :shSetOption {:fg c.white}
 :shStatement {:fg c.cyan}
 :shFunctionKey {:fg c.purple}
 ;; CSS
 :cssAttrComma {:fg c.purple}
 :cssAttributeSelector {:fg c.green}
 :cssBraces {:fg c.white}
 :cssClassName {:fg c.orange}
 :cssClassNameDot {:fg c.orange}
 :cssDefinition {:fg c.purple}
 :cssFontAttr {:fg c.orange}
 :cssFontDescriptor {:fg c.purple}
 :cssFunctionName {:fg c.blue}
 :cssIdentifier {:fg c.blue}
 :cssImportant {:fg c.purple}
 :cssInclude {:fg c.white}
 :cssIncludeKeyword {:fg c.purple}
 :cssMediaType {:fg c.orange}
 :cssProp {:fg c.white}
 :cssPseudoClassId {:fg c.orange}
 :cssSelectorOp {:fg c.purple}
 :cssSelectorOp2 {:fg c.purple}
 :cssTagName {:fg c.red}
 ;; Go
 :goDeclaration {:fg c.purple}
 ;; HTML
 :htmlTitle {:fg c.white}
 :htmlArg {:fg c.yellow}
 :htmlEndTag {:fg c.cyan}
 :htmlH1 {:fg c.white}
 :htmlLink {:fg c.purple}
 :htmlSpecialChar {:fg c.orange}
 :htmlSpecialTagName {:fg c.red}
 :htmlTag {:fg c.cyan}
 :htmlTagName {:fg c.red}
 ;; Coffeescript
 :coffeeExtendedOp {:fg c.purple}
 ;; JavaScript
 :javaScriptBraces {:fg c.white}
 :javaScriptFunction {:fg c.purple}
 :javaScriptIdentifier {:fg c.purple}
 :javaScriptNull {:fg c.orange}
 :javaScriptNumber {:fg c.orange}
 :javaScriptRequire {:fg c.cyan}
 :javaScriptReserved {:fg c.purple}
 ;; https://github.com/pangloss/vim-javascript
 :jsArrowFunction {:fg c.purple}
 :jsClassKeyword {:fg c.purple}
 :jsClassDefinition {:fg c.yellow}
 :jsClassMethodType {:fg c.purple}
 :jsClassFuncName {:fg c.blue}
 :jsDestructuringBlock {:fg c.blue}
 :jsDocParam {:fg c.blue}
 :jsDocTags {:fg c.purple}
 :jsExport {:fg c.purple}
 :jsExportDefault {:fg c.red}
 :jsExtendsKeyword {:fg c.purple}
 :jsConditional {:fg c.purple}
 :jsOperator {:fg c.purple}
 :jsFrom {:fg c.purple}
 :jsFuncArgs {:fg c.blue}
 :jsFuncCall {:fg c.blue}
 :jsFuncName {:fg c.blue}
 :jsObjectProp {:fg c.cyan}
 :jsFunction {:fg c.purple}
 :jsGenerator {:fg c.yellow}
 :jsGlobalObjects {:fg c.yellow}
 :jsImport {:fg c.purple}
 :jsModuleAs {:fg c.purple}
 :jsModuleWords {:fg c.purple}
 :jsModuleKeyword {:fg c.blue}
 :jsModules {:fg c.purple}
 :jsNull {:fg c.orange}
 :jsStorageClass {:fg c.purple}
 :jsSuper {:fg c.red}
 :jsTemplateBraces {:fg c.dark_red}
 :jsTemplateVar {:fg c.green}
 :jsThis {:fg c.red}
 :jsUndefined {:fg c.orange}
 ;; :jsVariableDef {:fg c.blue}
 ;; https://github.com/othree/yajs.vim
 :javascriptArrowFunc {:fg c.purple}
 :javascriptClassExtends {:fg c.purple}
 :javascriptClassKeyword {:fg c.purple}
 :javascriptDocNotation {:fg c.purple}
 :javascriptDocParamName {:fg c.blue}
 :javascriptDocTags {:fg c.purple}
 :javascriptEndColons {:fg c.white}
 :javascriptExport {:fg c.purple}
 :javascriptFuncArg {:fg c.white}
 :javascriptFuncKeyword {:fg c.purple}
 :javascriptIdentifier {:fg c.red}
 :javascriptImport {:fg c.purple}
 :javascriptMethodName {:fg c.white}
 :javascriptObjectLabel {:fg c.white}
 :javascriptOpSymbol {:fg c.cyan}
 :javascriptOpSymbols {:fg c.cyan}
 :javascriptPropertyName {:fg c.green}
 :javascriptTemplateSB {:fg c.dark_red}
 :javascriptVariable {:fg c.purple}
 ;; JSON
 :jsonCommentError {:fg c.white}
 :jsonKeyword {:fg c.blue}
 :jsonBoolean {:fg c.red}
 :jsonNumber {:fg c.orange}
 :jsonQuote {:fg c.white}
 :jsonMissingCommaError {:fg c.red :underline true}
 :jsonNoQuotesError {:fg c.red :underline true}
 :jsonNumError {:fg c.red :underline true}
 :jsonString {:fg c.green}
 :jsonStringSQError {:fg c.red :underline true}
 :jsonSemicolonError {:fg c.red :underline true}
 ;; Markdown
 :markdownCode {:fg c.green}
 :markdownLinkReference {:fg c.comment}
 :markdownJekyllFrontMatter {:fg c.comment}
 :markdownCodeBlock {:fg c.green}
 :markdownCodeDelimiter {:fg c.green}
 :markdownHeadingDelimiter {:fg c.red}
 :markdownRule {:fg c.comment}
 :markdownHeadingRule {:fg c.comment}
 :htmlH1 {:fg c.blue}
 :htmlH2 {:fg c.blue}
 :htmlH3 {:fg c.blue}
 :htmlH4 {:fg c.blue}
 :htmlH5 {:fg c.blue}
 :htmlH6 {:fg c.blue}
 :mkdDelimiter {:fg c.cyan}
 :markdownId {:fg c.purple}
 :markdownBlockquote {:fg c.comment}
 :markdownItalic {:fg c.purple :italic true}
 :mkdBold {:fg c.yellow :bold true}
 :mkdInlineURL {:fg c.light_red}
 :mkdListItem {:fg c.yellow}
 :markdownOrderedListMarker {:fg c.red}
 :markdownIdDeclaration {:fg c.blue}
 :mkdLink {:fg c.white}
 :markdownLinkDelimiter {:fg c.white}
 :mkdURL {:fg c.light_red}
 ;; Ruby
 :rubyAccess {:fg c.cyan}
 :rubyBlockParameter {:fg c.yellow}
 :rubyBlockParameterList {:fg c.white}
 :rubyBoolean {:fg c.red}
 :rubyCapitalizedMethod {:fg c.blue}
 :rubyClass {:fg c.purple}
 :rubyClassName {:fg c.yellow}
 :rubyConstant {:fg c.yellow}
 :rubyControl {:fg c.purple}
 :rubyEscape {:fg c.red}
 :rubyFunction {:fg c.blue}
 :rubyGlobalVariable {:fg c.red}
 :rubyInclude {:fg c.cyan}
 :rubyIncluderubyGlobalVariable {:fg c.red}
 :rubyInstanceVariable {:fg c.red}
 :rubyInterpolation {:fg c.cyan}
 :rubyInterpolationDelimiter {:fg c.red}
 :rubyModuleName {:fg c.white}
 :rubyKeyword {:fg c.purple}
 :rubyKeywordAsMethod {:fg c.cyan}
 :rubyOperator {:fg c.purple}
 :rubyPredefinedConstant {:fg c.yellow}
 :rubyPseudoVariable {:fg c.blue}
 :rubyRegexp {:fg c.white}
 :rubyRegexpDelimiter {:fg c.cyan}
 :rubySharpBang {:fg c.comment}
 :rubyStringDelimiter {:fg c.green}
 :rubySymbol {:fg c.blue}
 ;; ERb
 :erubyDelimiter {:fg c.red}
 ;; Rails
 :railsAssetPreProc {:fg c.comment}
 :railsAssetInclude {:fg c.comment}
 :railsAssetIncluded {:fg c.comment}
 :rubyRailsMethod {:fg c.blue}
 :rubyRailsFilterMethod {:fg c.cyan}
 :rubyRailsRenderMethod {:fg c.cyan}
 :rubyRailsARAssociationMethod {:fg c.cyan}
 :rubyRailsHelperMethod {:fg c.cyan}
 ;; RSpec
 :rspecGroupMethods {:fg c.white}
 :rspecBeforeAndAfter {:fg c.white}
 ;; CSS
 :cssColor {:fg c.orange}
 :cssCommonAttr {:fg c.blue}
 :cssProp {:fg c.cyan}
 :cssSelectorOp {:fg c.white}
 :cssUnitDecorators {:fg c.yellow}
 ;; Sass
 ;; https://github.com/tpope/vim-haml
 :sassAmpersand {:fg c.red}
 :sassClass {:fg c.orange}
 :sassControl {:fg c.purple}
 :sassExtend {:fg c.purple}
 :sassFor {:fg c.white}
 :sassFunction {:fg c.cyan}
 :sassId {:fg c.blue}
 :sassInclude {:fg c.purple}
 :sassMedia {:fg c.purple}
 :sassMediaOperators {:fg c.white}
 :sassMixin {:fg c.purple}
 :sassMixinName {:fg c.blue}
 :sassMixing {:fg c.purple}
 :sassVariable {:fg c.orange}
 ;; https://github.com/cakebaker/scss-syntax.vim
 :scssExtend {:fg c.purple}
 :scssExtendedSelector {:fg c.orange}
 :scssFunctionName {:fg c.cyan}
 :scssImport {:fg c.purple}
 :scssInclude {:fg c.purple}
 :scssMixin {:fg c.purple}
 :scssMixinName {:fg c.blue}
 :scssSelectorName {:fg c.yellow}
 :scssVariable {:fg c.orange}
 ;; TypeScript
 :typescriptReserved {:fg c.purple}
 :typescriptEndColons {:fg c.white}
 :typescriptBraces {:fg c.white}
 ;; XML
 :xmlAttrib {:fg c.yellow}
 :xmlEndTag {:fg c.red}
 :xmlTag {:fg c.red}
 :xmlTagName {:fg c.red}
 ;; PHP
 :phpInclude {:fg c.purple}
 :phpClass {:fg c.yellow}
 :phpClasses {:fg c.yellow}
 :phpFunction {:fg c.blue}
 :phpType {:fg c.purple}
 :phpKeyword {:fg c.purple}
 :phpVarSelector {:fg c.white}
 :phpIdentifier {:fg c.white}
 :phpMethod {:fg c.blue}
 :phpBoolean {:fg c.blue}
 :phpParent {:fg c.white}
 :phpOperator {:fg c.purple}
 :phpRegion {:fg c.purple}
 :phpUseNamespaceSeparator {:fg c.white}
 :phpClassNamespaceSeparator {:fg c.white}
 :phpDocTags {:fg c.purple :italic true}
 :phpDocParam {:fg c.purple :italic true}
 ;; Dart
 :dartLibrary {:fg c.purple}
 :dartTypedef {:fg c.purple}
 :dartClassDecl {:fg c.purple}
 :dartCoreType {:fg c.purple}
 :dartStorageClass {:fg c.purple}
 :dartOperator {:fg c.purple}
 :dartMetadata {:fg c.purple}
 :dartKeyword {:fg c.purple}
 ;; Gitconfig
 :gitconfigSection {:fg c.yellow}
 :gitconfigVariable {:fg c.cyan}
 :gitconfigAssignment {:fg c.green}
 :gitConfigString {:fg c.green}
 :gitConfigEscape {:fg c.comment}
 ;; Plugin highlighting
 ;; airblade/vim-gitgutter
 :GitGutterAdd {:link :SignifySignAdd}
 :GitGutterChange {:link :SignifySignChange}
 :GitGutterDelete {:link :SignifySignDelete}
 ;; mhinz/vim-signify
 :SignifySignAdd {:fg c.green}
 :SignifySignChange {:fg c.yellow}
 :SignifySignDelete {:fg c.red}
 ;; neomake/neomake
 :NeomakeWarningSign {:fg c.yellow}
 :NeomakeErrorSign {:fg c.red}
 :NeomakeInfoSign {:fg c.blue}
 ;; tpope/vim-fugitive
 :diffAdded {:fg c.green}
 :diffRemoved {:fg c.red}
 ;; liuchengxu/vista.vim
 :VistaBracket {:fg c.purple}
 :VistaChildrenNr {:fg c.orange}
 :VistaScope {:fg c.blue_purple}
 :VistaTag {:fg c.purple}
 :VistaPrefix {:fg c.blue_purple}
 :VistaParenthesis {:fg c.purple}
 :VistaColon {:fg c.cyan}
 :VistaIcon {:fg c.cyan}
 :VistaLineNr {:fg c.comment}
 :VistaArgs {:fg c.comment}
 :VistaKind {:fg c.comment}
 :VistaScopeKind {:fg c.yellow}
 ;; termdebug
 :debugBreakpoint {:fg c.blue_purple}
 :debugPC {:bg c.blue_purple :fg c.black}
 ;; davidhalter/jedi-vim
 :jediFunction {:bg c.special :fg c.white}
 :jediFat {:bg c.special :fg c.blue :bold true :underline true}
 ;; https://gitlab.com/HiPhish/rainbow-delimiters.nvim
 :RainbowDelimiterRed {:fg c.red}
 :RainbowDelimiterYellow {:fg c.yellow}
 :RainbowDelimiterBlue {:fg c.blue}
 :RainbowDelimiterOrange {:fg c.orange}
 :RainbowDelimiterGreen {:fg c.green}
 :RainbowDelimiterViolet {:fg c.purple}
 :RainbowDelimiterCyan {:fg c.cyan}
 ;; lewis6991/gitsigns.nvim
 :GitSignsAdd {:fg c.green}
 :GitSignsChange {:fg c.yellow}
 :GitSignsDelete {:fg c.red}
 :GitSignsCurrentLineBlame {:fg c.special}
 ;; lukas-reineke/indent-blankline.nvim
 :IblIndent {:fg c.line_number}
 ;; m-demare/hlargs.nvim
 :Hlargs {:fg c.orange}
 ;; Tree-sitter
 "@annotation" {:fg c.yellow}
 "@attribute" {:fg c.light_red}
 "@boolean" {:fg c.red :italic true}
 "@character" {:fg c.green}
 "@character.special" {:fg c.blue_purple}
 "@comment" {:fg c.comment}
 "@conditional" {:fg c.purple}
 "@constant" {:fg c.cyan}
 "@constant.builtin" {:fg c.yellow}
 "@constant.macro" {:fg c.orange}
 "@constructor" {:fg c.white}
 "@define" {:fg c.purple}
 "@exception" {:fg c.purple}
 "@field" {:fg c.cyan}
 "@float" {:fg c.orange}
 "@function" {:fg c.blue}
 "@function.builtin" {:fg c.cyan}
 "@function.call" {:fg c.blue}
 "@function.macro" {:fg c.purple :italic true}
 "@include" {:fg c.blue}
 "@keyword" {:fg c.red}
 "@keyword.function" {:fg c.blue_purple}
 "@keyword.operator" {:fg c.purple}
 "@keyword.return" {:fg c.red}
 "@label" {:fg c.purple}
 "@method" {:fg c.blue}
 "@method.call" {:fg c.blue}
 "@namespace" {:fg c.blue_purple}
 "@number" {:fg c.orange}
 "@operator" {:fg c.purple}
 "@parameter" {:fg c.white}
 "@parameter.reference" {:fg c.menu}
 "@property" {:fg c.cyan}
 "@punctuation.bracket" {:fg c.white}
 "@punctuation.delimiter" {:fg c.white}
 "@punctuation.special" {:fg c.white}
 "@repeat" {:fg c.purple}
 "@storageclass" {:fg c.yellow}
 "@string" {:fg c.green}
 "@string.escape" {:fg c.special}
 "@string.regex" {:fg c.white}
 "@string.special" {:fg c.menu}
 "@symbol" {:fg c.red}
 "@tag" {:fg c.light_red}
 "@tag.attribute" {:fg c.green}
 "@tag.delimiter" {:fg c.white}
 "@text.danger" {:fg c.orange}
 "@text.emphasis" {:italic true}
 "@text.environment" {:fg c.light_red}
 "@text.environment.name" {:fg c.cyan}
 "@text.literal" {:fg c.yellow}
 "@text.reference" {:fg c.cyan}
 "@text.strike" {:strikethrough true}
 "@text.strong" {:bold true}
 "@text.title" {:fg c.yellow :bold true}
 "@text.underline" {:underline true}
 "@text.warning" {:fg c.yellow}
 "@text.todo" {:fg c.purple}
 "@type" {:fg c.yellow}
 "@type.builtin" {:fg c.orange}
 "@type.qualifier" {:fg c.yellow}
 "@variable" {:fg c.white}
 "@variable.builtin" {:fg c.orange}
 ;; Markdown
 "@punctuation.special.markdown" {:fg c.purple}
 ;; LSP Semantic Highlight
 "@lsp.type.variable" {:fg c.white}
 "@lsp.type.typeParameter" {}
 "@lsp.type.enum" {:fg c.yellow}
 "@lsp.type.enumMember" {:fg c.cyan}
 "@lsp.type.parameter" {:fg c.orange}
 "@lsp.type.namespace" {:fg c.blue_purple}
 "@lsp.type.interface" {:fg c.yellow}
 "@lsp.type.decorator" {:fg c.yellow}
 "@lsp.type.property" {:fg c.dark_green}
 "@lsp.type.function" {:fg c.blue}
 "@lsp.type.comment" {:fg c.comment}
 "@lsp.type.class" {:fg c.yellow}
 "@lsp.type.struct" {:fg c.yellow}
 "@lsp.type.method" {:fg c.blue}
 "@lsp.type.macro" {:fg c.purple}
 "@lsp.type.type" {:fg c.yellow}
 ;; NOTE: unresolvedReference applies to Rust, and, hopefuly, works for other LSP servers.
 "@lsp.type.unresolvedReference" {:link :DiagnosticUnderlineError}
 "@lsp.mod.defaultLibrary.lua" {:fg c.blue_purple}
 ;; Git highlighting
 :gitcommitComment {:fg c.comment}
 :gitcommitUnmerged {:fg c.green}
 :gitcommitOnBranch {}
 :gitcommitBranch {:fg c.purple}
 :gitcommitDiscardedType {:fg c.red}
 :gitcommitSelectedType {:fg c.green}
 :gitcommitHeader {}
 :gitcommitUntrackedFile {:fg c.cyan}
 :gitcommitDiscardedFile {:fg c.red}
 :gitcommitSelectedFile {:fg c.green}
 :gitcommitUnmergedFile {:fg c.yellow}
 :gitcommitFile {}
 :gitcommitSummary {:fg c.white}
 :gitcommitOverflow {:fg c.red}
 :gitcommitNoBranch {:link :gitcommitBranch}
 :gitcommitUntracked {:link :gitcommitComment}
 :gitcommitDiscarded {:link :gitcommitComment}
 :gitcommitSelected {:link :gitcommitComment}
 :gitcommitDiscardedArrow {:link :gitcommitDiscardedFile}
 :gitcommitSelectedArrow {:link :gitcommitSelectedFile}
 :gitcommitUnmergedArrow {:link :gitcommitUnmergedFile}
 ;; LSP
 :DiagnosticError {:fg c.red}
 :DiagnosticWarn {:fg c.yellow}
 :DiagnosticInfo {:fg c.white}
 :DiagnosticHint {:fg c.special}
 :DiagnosticVirtualTextError {:fg c.red}
 :DiagnosticVirtualTextWarn {:fg c.yellow}
 :DiagnosticVirtualTextInfo {:fg c.white}
 :DiagnosticVirtualTextHint {:fg c.special}
 :DiagnosticUnderlineError {:fg c.red :underline true}
 :DiagnosticUnderlineWarn {:fg c.yellow :underline true}
 :DiagnosticUnderlineInfo {:fg c.white :underline true}
 :DiagnosticUnderlineHint {:fg c.special :underline true}
 }
