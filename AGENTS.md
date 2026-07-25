# AGENTS.md

Follow conventions in [CONTRIBUTING.md](CONTRIBUTING.md).

## Build

Run `make` — it compiles `fnl/` → `lua/`, cleans stale output, and updates README/CONTRIBUTING anchors. Bundled Fennel in `deps/fennel-1.3.1`.

## Highlight groups

All highlight groups live in `fnl/palenight/groups.fnl` inside `(transform-hl-groups colors colors-cterm {...})`. The `transform-hl-groups` macro:

- Resolves `:fg` / `:bg` through the `colors` table and auto-generates `ctermfg` / `ctermbg`
- Passes everything else through unchanged: `:link`, `:bold`, `:italic`, `:reverse`, `:underline`, `:strikethrough`

Tree-sitter groups first, then LSP, built-in syntax, and plugin groups at the bottom. Each plugin gets its own boxed comment section.

## Commits

Hand-commit source changes (`fnl/`), then run `make commit` which stages all of `lua/` and auto-commits with `chore: generated lua`. Two commits: the logical change + the build artifact.
