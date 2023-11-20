(local {: config : setup} (require :palenight/_config))
(local {: warn : messages} (require :palenight/_notify))
(local {: supported-nvim-version?} (require :palenight/_checks))

(local M {})

(set M.setup setup)

(lambda M.load []
  (when (not (supported-nvim-version?))
    (warn messages.unsupported-nvim-version))
  (when (= :light vim.opt.background)
    (warn messages.unsupported-light-theme))
  (when vim.g.colors_name
    (vim.cmd.hi :clear))
  (set vim.g.colors_name :palenight)
  (let [groups (require :palenight/groups)]
    (each [group hl (pairs groups)]
      (local hl (vim.deepcopy hl))
      (set hl.italic (and config.italic hl.italic))
      (vim.api.nvim_set_hl 0 group hl))))

M
