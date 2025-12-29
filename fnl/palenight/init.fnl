(local config (require :palenight/_config))
(local {: notify-warn : messages} (require :palenight/_notify))
(local {: supported-nvim-version?} (require :palenight/_checks))

(local M {})

(set M.setup config.setup)

(λ M.load []
  (when (not (supported-nvim-version?))
    (notify-warn messages.unsupported-nvim-version))
  (when vim.g.colors_name
    (vim.cmd.hi :clear))
  (set vim.g.colors_name :palenight)
  (let [groups (require :palenight/groups)]
    (each [group hl (pairs groups)]
      (local hl (vim.deepcopy hl))
      (set hl.italic (and config.opts.italic hl.italic))
      (vim.api.nvim_set_hl 0 group hl))))

M
