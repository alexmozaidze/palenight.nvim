(local config (require :palenight/_config))
(local {: notify-warn : messages} (require :palenight/_notify))
(local {: supported-nvim-version?} (require :palenight/_checks))

(local M {})

(set M.setup config.setup)

(λ M.load_terminal_colors []
  "Loads terminal colors for GUIs as well as initializes an autocmd for cleanup."
  (let [{: define-terminal-colors : clear-terminal-colors} (require :palenight/_gui)
        {: autocmd} (require :palenight/_autocmd)]
    (define-terminal-colors)
    ;; NOTE: This autocmd runs once every time the user switches from
    ;; palenight to another colorscheme.
    (autocmd "ColorSchemePre" {:once true
                               :callback clear-terminal-colors})))

(λ M.load_colorscheme []
  "Loads just the colorscheme (aka, excludes terminal GUI colors)."
  (let [groups (require :palenight/groups)]
    (each [group hl (pairs groups)]
      (local hl (vim.deepcopy hl))
      (set hl.italic (and config.opts.italic hl.italic))
      (vim.api.nvim_set_hl 0 group hl))))

(λ M.load []
  "Loads the colorscheme and the GUI terminal color definitions."
  (when (not (supported-nvim-version?))
    (notify-warn messages.unsupported-nvim-version))
  (vim.cmd.hi :clear)
  (set vim.g.colors_name :palenight)
  (M.load_terminal_colors)
  (M.load_colorscheme))

M
