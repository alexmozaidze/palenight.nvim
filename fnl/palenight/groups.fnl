(local c (require :palenight/colors))

[;; Syntax hls
 {:hl :Comment :fg c.comment_grey :italic true}
 {:hl :Constant :fg c.cyan}
 {:hl :String :fg c.green}
 {:hl :Character :fg c.green}
 {:hl :Number :fg c.dark_yellow}
 {:hl :Boolean :fg c.red}
 {:hl :Float :fg c.dark_yellow}
 {:hl :Identifier :fg c.red}
 {:hl :Function :fg c.blue}
 {:hl :Statement :fg c.purple}
 {:hl :Conditional :fg c.purple}
 {:hl :Repeat :fg c.purple}
 {:hl :Label :fg c.purple}
 {:hl :Operator :fg c.cyan}
 {:hl :Keyword :fg c.red}
 {:hl :Exception :fg c.purple}
 {:hl :PreProc :fg c.yellow}
 {:hl :Include :fg c.blue}
 {:hl :Define :fg c.purple}
 {:hl :Macro :fg c.purple}
 {:hl :PreCondit :fg c.yellow}
 {:hl :Type :fg c.yellow}
 {:hl :StorageClass :fg c.yellow}
 {:hl :Structure :fg c.yellow}
 {:hl :Typedef :fg c.yellow}
 {:hl :Special :fg c.blue}
 {:hl :SpecialChar}
 {:hl :Tag}
 {:hl :Delimiter}
 {:hl :SpecialComment :fg c.comment_grey}
 {:hl :Debug}
 {:hl :Underlined :underline true}
 {:hl :Ignore}
 {:hl :Error :fg c.red}
 {:hl :Todo :fg c.purple}
 ;; Highlight hls
 {:hl :ColorColumn :bg c.cursor_grey}
 {:hl :Conceal}
 {:hl :Cursor :fg c.black :bg c.blue}
 {:hl :CursorIM}
 {:hl :CursorColumn :bg c.cursor_grey}
 {:hl :CursorLine :bg c.cursor_grey}
 {:hl :Directory :fg c.blue}
 {:hl :DiffAdd :bg c.green :fg c.black}
 {:hl :DiffChange :bg c.yellow :fg c.black}
 {:hl :DiffDelete :bg c.red :fg c.black}
 {:hl :DiffText :bg c.black :fg c.yellow}
 {:hl :ErrorMsg :fg c.red}
 {:hl :VertSplit :fg c.vertsplit}
 {:hl :Folded :bg c.cursor_grey :fg c.comment_grey}
 {:hl :FoldColumn}
 {:hl :SignColumn}
 {:hl :IncSearch :fg c.yellow :bg c.comment_grey}
 {:hl :LineNr :fg c.gutter_fg_grey}
 {:hl :CursorLineNr}
 {:hl :MatchParen :fg c.blue :underline true}
 {:hl :ModeMsg}
 {:hl :MoreMsg}
 {:hl :NonText :fg c.special_grey}
 {:hl :Normal :fg c.white :bg c.black}
 {:hl :Pmenu :bg c.menu_grey}
 {:hl :PmenuSel :fg c.black :bg c.blue}
 {:hl :PmenuSbar :bg c.special_grey}
 {:hl :PmenuThumb :bg c.white}
 {:hl :Question :fg c.purple}
 {:hl :Search :fg c.black :bg c.yellow}
 {:hl :SpecialKey :fg c.special_grey}
 {:hl :SpellBad :fg c.red :underline true}
 {:hl :SpellCap :fg c.dark_yellow}
 {:hl :SpellLocal :fg c.dark_yellow}
 {:hl :SpellRare :fg c.dark_yellow}
 {:hl :StatusLine :fg c.white :bg c.cursor_grey}
 {:hl :StatusLineNC :fg c.comment_grey}
 {:hl :TabLine :fg c.comment_grey}
 {:hl :TabLineFill}
 {:hl :TabLineSel :fg c.white}
 {:hl :Title :fg c.green}
 {:hl :Visual :fg c.visual_black :bg c.visual_grey}
 {:hl :VisualNOS :bg c.visual_grey}
 {:hl :WarningMsg :fg c.yellow}
 {:hl :WildMenu :fg c.black :bg c.blue}
 ;; Language-specific hls
 ;; Docker
 {:hl :dockerfileKeyword :fg c.purple}
 ;; Shell
 {:hl :shSet :fg c.cyan}
 {:hl :shSetOption :fg c.white}
 {:hl :shStatement :fg c.cyan}
 {:hl :shFunctionKey :fg c.purple}
 ;; CSS
 {:hl :cssAttrComma :fg c.purple}
 {:hl :cssAttributeSelector :fg c.green}
 {:hl :cssBraces :fg c.white}
 {:hl :cssClassName :fg c.dark_yellow}
 {:hl :cssClassNameDot :fg c.dark_yellow}
 {:hl :cssDefinition :fg c.purple}
 {:hl :cssFontAttr :fg c.dark_yellow}
 {:hl :cssFontDescriptor :fg c.purple}
 {:hl :cssFunctionName :fg c.blue}
 {:hl :cssIdentifier :fg c.blue}
 {:hl :cssImportant :fg c.purple}
 {:hl :cssInclude :fg c.white}
 {:hl :cssIncludeKeyword :fg c.purple}
 {:hl :cssMediaType :fg c.dark_yellow}
 {:hl :cssProp :fg c.white}
 {:hl :cssPseudoClassId :fg c.dark_yellow}
 {:hl :cssSelectorOp :fg c.purple}
 {:hl :cssSelectorOp2 :fg c.purple}
 {:hl :cssTagName :fg c.red}
 ;; Go
 {:hl :goDeclaration :fg c.purple}
 ;; HTML
 {:hl :htmlTitle :fg c.white}
 {:hl :htmlArg :fg c.yellow}
 {:hl :htmlEndTag :fg c.cyan}
 {:hl :htmlH1 :fg c.white}
 {:hl :htmlLink :fg c.purple}
 {:hl :htmlSpecialChar :fg c.dark_yellow}
 {:hl :htmlSpecialTagName :fg c.red}
 {:hl :htmlTag :fg c.cyan}
 {:hl :htmlTagName :fg c.red}
 ;; Coffeescript
 {:hl :coffeeExtendedOp :fg c.purple}
 ;; JavaScript
 {:hl :javaScriptBraces :fg c.white}
 {:hl :javaScriptFunction :fg c.purple}
 {:hl :javaScriptIdentifier :fg c.purple}
 {:hl :javaScriptNull :fg c.dark_yellow}
 {:hl :javaScriptNumber :fg c.dark_yellow}
 {:hl :javaScriptRequire :fg c.cyan}
 {:hl :javaScriptReserved :fg c.purple}
 ;; httpc.//github.com/pangloss/vim-javascript
 {:hl :jsArrowFunction :fg c.purple}
 {:hl :jsClassKeyword :fg c.purple}
 {:hl :jsClassDefinition :fg c.yellow}
 {:hl :jsClassMethodType :fg c.purple}
 {:hl :jsClassFuncName :fg c.blue}
 {:hl :jsDestructuringBlock :fg c.blue}
 {:hl :jsDocParam :fg c.blue}
 {:hl :jsDocTags :fg c.purple}
 {:hl :jsExport :fg c.purple}
 {:hl :jsExportDefault :fg c.red}
 {:hl :jsExtendsKeyword :fg c.purple}
 {:hl :jsConditional :fg c.purple}
 {:hl :jsOperator :fg c.purple}
 {:hl :jsFrom :fg c.purple}
 {:hl :jsFuncArgs :fg c.blue}
 {:hl :jsFuncCall :fg c.blue}
 {:hl :jsFuncName :fg c.blue}
 {:hl :jsObjectProp :fg c.cyan}
 {:hl :jsFunction :fg c.purple}
 {:hl :jsGenerator :fg c.yellow}
 {:hl :jsGlobalObjects :fg c.yellow}
 {:hl :jsImport :fg c.purple}
 {:hl :jsModuleAs :fg c.purple}
 {:hl :jsModuleWords :fg c.purple}
 {:hl :jsModuleKeyword :fg c.blue}
 {:hl :jsModules :fg c.purple}
 {:hl :jsNull :fg c.dark_yellow}
 {:hl :jsStorageClass :fg c.purple}
 {:hl :jsSuper :fg c.red}
 {:hl :jsTemplateBraces :fg c.dark_red}
 {:hl :jsTemplateVar :fg c.green}
 {:hl :jsThis :fg c.red}
 {:hl :jsUndefined :fg c.dark_yellow}
 ;; {:hl :jsVariableDef :fg c.blue}
 ;; httpc.//github.com/othree/yajs.vim
 {:hl :javascriptArrowFunc :fg c.purple}
 {:hl :javascriptClassExtends :fg c.purple}
 {:hl :javascriptClassKeyword :fg c.purple}
 {:hl :javascriptDocNotation :fg c.purple}
 {:hl :javascriptDocParamName :fg c.blue}
 {:hl :javascriptDocTags :fg c.purple}
 {:hl :javascriptEndColons :fg c.white}
 {:hl :javascriptExport :fg c.purple}
 {:hl :javascriptFuncArg :fg c.white}
 {:hl :javascriptFuncKeyword :fg c.purple}
 {:hl :javascriptIdentifier :fg c.red}
 {:hl :javascriptImport :fg c.purple}
 {:hl :javascriptMethodName :fg c.white}
 {:hl :javascriptObjectLabel :fg c.white}
 {:hl :javascriptOpSymbol :fg c.cyan}
 {:hl :javascriptOpSymbols :fg c.cyan}
 {:hl :javascriptPropertyName :fg c.green}
 {:hl :javascriptTemplateSB :fg c.dark_red}
 {:hl :javascriptVariable :fg c.purple}
 ;; JSON
 {:hl :jsonCommentError :fg c.white}
 {:hl :jsonKeyword :fg c.blue}
 {:hl :jsonBoolean :fg c.red}
 {:hl :jsonNumber :fg c.dark_yellow}
 {:hl :jsonQuote :fg c.white}
 {:hl :jsonMissingCommaError :fg c.red :reverse true}
 {:hl :jsonNoQuotesError :fg c.red :reverse true}
 {:hl :jsonNumError :fg c.red :reverse true}
 {:hl :jsonString :fg c.green}
 {:hl :jsonStringSQError :fg c.red :reverse true}
 {:hl :jsonSemicolonError :fg c.red :reverse true}
 ;; Markdown
 {:hl :markdownCode :fg c.green}
 {:hl :markdownLinkReference :fg c.comment_grey}
 {:hl :markdownJekyllFrontMatter :fg c.comment_grey}
 {:hl :markdownCodeBlock :fg c.green}
 {:hl :markdownCodeDelimiter :fg c.green}
 {:hl :markdownHeadingDelimiter :fg c.red}
 {:hl :markdownRule :fg c.comment_grey}
 {:hl :markdownHeadingRule :fg c.comment_grey}
 {:hl :htmlH1 :fg c.blue}
 {:hl :htmlH2 :fg c.blue}
 {:hl :htmlH3 :fg c.blue}
 {:hl :htmlH4 :fg c.blue}
 {:hl :htmlH5 :fg c.blue}
 {:hl :htmlH6 :fg c.blue}
 {:hl :mkdDelimiter :fg c.cyan}
 {:hl :markdownId :fg c.purple}
 {:hl :markdownBlockquote :fg c.comment_grey}
 {:hl :markdownItalic :fg c.purple :italic true}
 {:hl :mkdBold :fg c.yellow :bold true}
 {:hl :mkdInlineURL :fg c.light_red}
 {:hl :mkdListItem :fg c.yellow}
 {:hl :markdownOrderedListMarker :fg c.red}
 {:hl :markdownIdDeclaration :fg c.blue}
 {:hl :mkdLink :fg c.white}
 {:hl :markdownLinkDelimiter :fg c.white}
 {:hl :mkdURL :fg c.light_red}
 ;; Ruby
 {:hl :rubyAccess :fg c.cyan}
 {:hl :rubyBlockParameter :fg c.yellow}
 {:hl :rubyBlockParameterList :fg c.white}
 {:hl :rubyBoolean :fg c.red}
 {:hl :rubyCapitalizedMethod :fg c.blue}
 {:hl :rubyClass :fg c.purple}
 {:hl :rubyClassName :fg c.yellow}
 {:hl :rubyConstant :fg c.yellow}
 {:hl :rubyControl :fg c.purple}
 {:hl :rubyEscape :fg c.red}
 {:hl :rubyFunction :fg c.blue}
 {:hl :rubyGlobalVariable :fg c.red}
 {:hl :rubyInclude :fg c.cyan}
 {:hl :rubyIncluderubyGlobalVariable :fg c.red}
 {:hl :rubyInstanceVariable :fg c.red}
 {:hl :rubyInterpolation :fg c.cyan}
 {:hl :rubyInterpolationDelimiter :fg c.red}
 {:hl :rubyModuleName :fg c.white}
 {:hl :rubyKeyword :fg c.purple}
 {:hl :rubyKeywordAsMethod :fg c.cyan}
 {:hl :rubyOperator :fg c.purple}
 {:hl :rubyPredefinedConstant :fg c.yellow}
 {:hl :rubyPseudoVariable :fg c.blue}
 {:hl :rubyRegexp :fg c.white}
 {:hl :rubyRegexpDelimiter :fg c.cyan}
 {:hl :rubySharpBang :fg c.comment_grey}
 {:hl :rubyStringDelimiter :fg c.green}
 {:hl :rubySymbol :fg c.blue}
 ;; ERb
 {:hl :erubyDelimiter :fg c.red}
 ;; Rails
 {:hl :railsAssetPreProc :fg c.comment_grey}
 {:hl :railsAssetInclude :fg c.comment_grey}
 {:hl :railsAssetIncluded :fg c.comment_grey}
 {:hl :rubyRailsMethod :fg c.blue}
 {:hl :rubyRailsFilterMethod :fg c.cyan}
 {:hl :rubyRailsRenderMethod :fg c.cyan}
 {:hl :rubyRailsARAssociationMethod :fg c.cyan}
 {:hl :rubyRailsHelperMethod :fg c.cyan}
 ;; RSpec
 {:hl :rspecGroupMethods :fg c.white}
 {:hl :rspecBeforeAndAfter :fg c.white}
 ;; CSS
 {:hl :cssColor :fg c.dark_yellow}
 {:hl :cssCommonAttr :fg c.blue}
 {:hl :cssProp :fg c.cyan}
 {:hl :cssSelectorOp :fg c.white}
 {:hl :cssUnitDecorators :fg c.yellow}
 ;; Sass
 ;; httpc.//github.com/tpope/vim-haml
 {:hl :sassAmpersand :fg c.red}
 {:hl :sassClass :fg c.dark_yellow}
 {:hl :sassControl :fg c.purple}
 {:hl :sassExtend :fg c.purple}
 {:hl :sassFor :fg c.white}
 {:hl :sassFunction :fg c.cyan}
 {:hl :sassId :fg c.blue}
 {:hl :sassInclude :fg c.purple}
 {:hl :sassMedia :fg c.purple}
 {:hl :sassMediaOperators :fg c.white}
 {:hl :sassMixin :fg c.purple}
 {:hl :sassMixinName :fg c.blue}
 {:hl :sassMixing :fg c.purple}
 {:hl :sassVariable :fg c.dark_yellow}
 ;; httpc.//github.com/cakebaker/scss-syntax.vim
 {:hl :scssExtend :fg c.purple}
 {:hl :scssExtendedSelector :fg c.dark_yellow}
 {:hl :scssFunctionName :fg c.cyan}
 {:hl :scssImport :fg c.purple}
 {:hl :scssInclude :fg c.purple}
 {:hl :scssMixin :fg c.purple}
 {:hl :scssMixinName :fg c.blue}
 {:hl :scssSelectorName :fg c.yellow}
 {:hl :scssVariable :fg c.dark_yellow}
 ;; TypeScript
 {:hl :typescriptReserved :fg c.purple}
 {:hl :typescriptEndColons :fg c.white}
 {:hl :typescriptBraces :fg c.white}
 ;; XML
 {:hl :xmlAttrib :fg c.yellow}
 {:hl :xmlEndTag :fg c.red}
 {:hl :xmlTag :fg c.red}
 {:hl :xmlTagName :fg c.red}
 ;; PHP
 {:hl :phpInclude :fg c.purple}
 {:hl :phpClass :fg c.yellow}
 {:hl :phpClasses :fg c.yellow}
 {:hl :phpFunction :fg c.blue}
 {:hl :phpType :fg c.purple}
 {:hl :phpKeyword :fg c.purple}
 {:hl :phpVarSelector :fg c.white}
 {:hl :phpIdentifier :fg c.white}
 {:hl :phpMethod :fg c.blue}
 {:hl :phpBoolean :fg c.blue}
 {:hl :phpParent :fg c.white}
 {:hl :phpOperator :fg c.purple}
 {:hl :phpRegion :fg c.purple}
 {:hl :phpUseNamespaceSeparator :fg c.white}
 {:hl :phpClassNamespaceSeparator :fg c.white}
 {:hl :phpDocTags :fg c.purple :italic true}
 {:hl :phpDocParam :fg c.purple :italic true}
 ;; Dart
 {:hl :dartLibrary :fg c.purple}
 {:hl :dartTypedef :fg c.purple}
 {:hl :dartClassDecl :fg c.purple}
 {:hl :dartCoreType :fg c.purple}
 {:hl :dartStorageClass :fg c.purple}
 {:hl :dartOperator :fg c.purple}
 {:hl :dartMetadata :fg c.purple}
 {:hl :dartKeyword :fg c.purple}
 ;; Gitconfig
 {:hl :gitconfigSection :fg c.yellow}
 {:hl :gitconfigVariable :fg c.cyan}
 {:hl :gitconfigAssignment :fg c.green}
 {:hl :gitConfigString :fg c.green}
 {:hl :gitConfigEscape :fg c.comment_grey}
 ;; Plugin highlighting
 ;; airblade/vim-gitgutter
 {:hl :GitGutterAdd :link :SignifySignAdd}
 {:hl :GitGutterChange :link :SignifySignChange}
 {:hl :GitGutterDelete :link :SignifySignDelete}
 ;; mhinz/vim-signify
 {:hl :SignifySignAdd :fg c.green}
 {:hl :SignifySignChange :fg c.yellow}
 {:hl :SignifySignDelete :fg c.red}
 ;; neomake/neomake
 {:hl :NeomakeWarningSign :fg c.yellow}
 {:hl :NeomakeErrorSign :fg c.red}
 {:hl :NeomakeInfoSign :fg c.blue}
 ;; tpope/vim-fugitive
 {:hl :diffAdded :fg c.green}
 {:hl :diffRemoved :fg c.red}
 ;; liuchengxu/vista.vim
 {:hl :VistaBracket :fg c.purple}
 {:hl :VistaChildrenNr :fg c.dark_yellow}
 {:hl :VistaScope :fg c.blue_purple}
 {:hl :VistaTag :fg c.purple}
 {:hl :VistaPrefix :fg c.blue_purple}
 {:hl :VistaParenthesis :fg c.purple}
 {:hl :VistaColon :fg c.cyan}
 {:hl :VistaIcon :fg c.cyan}
 {:hl :VistaLineNr :fg c.comment_grey}
 {:hl :VistaArgs :fg c.comment_grey}
 {:hl :VistaKind :fg c.comment_grey}
 {:hl :VistaScopeKind :fg c.yellow}
 ;; termdebug
 {:hl :debugBreakpoint :fg c.blue_purple}
 {:hl :debugPC :bg c.blue_purple :fg c.black}
 ;; davidhalter/jedi-vim
 {:hl :jediFunction :bg c.white_mask_3 :fg c.white}
 {:hl :jediFat :bg c.white_mask_3 :fg c.blue :bold true :underline true}
 ;; https://gitlab.com/HiPhish/rainbow-delimiters.nvim
 {:hl :RainbowDelimiterRed :fg c.red}
 {:hl :RainbowDelimiterYellow :fg c.yellow}
 {:hl :RainbowDelimiterBlue :fg c.blue}
 {:hl :RainbowDelimiterOrange :fg c.light_red}
 {:hl :RainbowDelimiterGreen :fg c.green}
 {:hl :RainbowDelimiterViolet :fg c.purple}
 {:hl :RainbowDelimiterCyan :fg c.cyan}
 ;; lewis6991/gitsigns.nvim
 {:hl :GitSignsAdd :fg c.green}
 {:hl :GitSignsChange :fg c.yellow}
 {:hl :GitSignsDelete :fg c.red}
 {:hl :GitSignsCurrentLineBlame :fg c.comment_grey}
 ;; Tree-sitter
 {:hl "@annotation" :fg c.yellow}
 {:hl "@attribute" :fg c.light_red}
 {:hl "@boolean" :fg c.red :italic true}
 {:hl "@character" :fg c.green}
 {:hl "@character.special" :fg c.blue_purple}
 {:hl "@comment" :fg c.comment_grey}
 {:hl "@conditional" :fg c.purple}
 {:hl "@constant" :fg c.cyan}
 {:hl "@constant.builtin" :fg c.yellow}
 {:hl "@constant.macro" :fg c.dark_yellow}
 {:hl "@constructor" :fg c.white}
 {:hl "@define" :fg c.purple}
 {:hl "@exception" :fg c.purple}
 {:hl "@field" :fg c.cyan}
 {:hl "@float" :fg c.dark_yellow}
 {:hl "@function" :fg c.blue}
 {:hl "@function.builtin" :fg c.cyan}
 {:hl "@function.call" :fg c.blue}
 {:hl "@function.macro" :fg c.purple :italic true}
 {:hl "@include" :fg c.blue}
 {:hl "@keyword" :fg c.red}
 {:hl "@keyword.function" :fg c.blue_purple}
 {:hl "@keyword.operator" :fg c.purple}
 {:hl "@keyword.return" :fg c.red}
 {:hl "@label" :fg c.purple}
 {:hl "@method" :fg c.blue}
 {:hl "@method.call" :fg c.blue}
 {:hl "@namespace" :fg c.blue_purple}
 {:hl "@number" :fg c.dark_yellow}
 {:hl "@operator" :fg c.purple}
 {:hl "@parameter" :fg c.white}
 {:hl "@parameter.reference" :fg c.menu_grey}
 {:hl "@property" :fg c.cyan}
 {:hl "@punctuation.bracket" :fg c.white}
 {:hl "@punctuation.delimiter" :fg c.white}
 {:hl "@punctuation.special" :fg c.white}
 {:hl "@repeat" :fg c.purple}
 {:hl "@storageclass" :fg c.yellow}
 {:hl "@string" :fg c.green}
 {:hl "@string.escape" :fg c.comment_grey}
 {:hl "@string.regex" :fg c.white}
 {:hl "@string.special" :fg c.menu_grey}
 {:hl "@symbol" :fg c.red}
 {:hl "@tag" :fg c.light_red}
 {:hl "@tag.attribute" :fg c.green}
 {:hl "@tag.delimiter" :fg c.white}
 {:hl "@text.danger" :fg c.dark_yellow}
 {:hl "@text.emphasis" :italic true}
 {:hl "@text.environment" :fg c.light_red}
 {:hl "@text.environment.name" :fg c.cyan}
 {:hl "@text.literal" :fg c.yellow}
 {:hl "@text.reference" :fg c.cyan}
 {:hl "@text.strike" :strikethrough true}
 {:hl "@text.strong" :bold true}
 {:hl "@text.title" :fg c.yellow :bold true}
 {:hl "@text.underline" :underline true}
 {:hl "@text.warning" :fg c.yellow}
 {:hl "@text.todo" :fg c.purple}
 {:hl "@type" :fg c.yellow}
 {:hl "@type.builtin" :fg c.dark_yellow}
 {:hl "@type.qualifier" :fg c.yellow}
 {:hl "@variable" :fg c.white}
 {:hl "@variable.builtin" :fg c.dark_yellow}
 ;; Git highlighting
 {:hl :gitcommitComment :fg c.comment_grey}
 {:hl :gitcommitUnmerged :fg c.green}
 {:hl :gitcommitOnBranch}
 {:hl :gitcommitBranch :fg c.purple}
 {:hl :gitcommitDiscardedType :fg c.red}
 {:hl :gitcommitSelectedType :fg c.green}
 {:hl :gitcommitHeader}
 {:hl :gitcommitUntrackedFile :fg c.cyan}
 {:hl :gitcommitDiscardedFile :fg c.red}
 {:hl :gitcommitSelectedFile :fg c.green}
 {:hl :gitcommitUnmergedFile :fg c.yellow}
 {:hl :gitcommitFile}
 {:hl :gitcommitSummary :fg c.white}
 {:hl :gitcommitOverflow :fg c.red}
 {:hl :gitcommitNoBranch :link :gitcommitBranch}
 {:hl :gitcommitUntracked :link :gitcommitComment}
 {:hl :gitcommitDiscarded :link :gitcommitComment}
 {:hl :gitcommitSelected :link :gitcommitComment}
 {:hl :gitcommitDiscardedArrow :link :gitcommitDiscardedFile}
 {:hl :gitcommitSelectedArrow :link :gitcommitSelectedFile}
 {:hl :gitcommitUnmergedArrow :link :gitcommitUnmergedFile}
 ;; LSP
 {:hl :DiagnosticError :fg c.red}
 {:hl :DiagnosticWarn :fg c.yellow}
 {:hl :DiagnosticInfo :fg c.white}
 {:hl :DiagnosticHint :fg c.comment_grey}
 {:hl :DiagnosticVirtualTextError :fg c.red}
 {:hl :DiagnosticVirtualTextWarn :fg c.yellow}
 {:hl :DiagnosticVirtualTextInfo :fg c.white}
 {:hl :DiagnosticVirtualTextHint :fg c.comment_grey}
 {:hl :DiagnosticUnderlineError :fg c.red :underline true}
 {:hl :DiagnosticUnderlineWarn :fg c.yellow :underline true}
 {:hl :DiagnosticUnderlineInfo :fg c.white :underline true}
 {:hl :DiagnosticUnderlineHint :fg c.comment_grey :underline true}
 ]
