(local messages {:unsupported-nvim-version "Only nvim >=0.8 is supported. Proceed at your own risk!"
                 :unsupported-light-theme "Light theme is unsupported. Set `background` to `dark`."})

(lambda warn [message]
  (vim.notify (.. "palenight.nvim: " message) vim.log.levels.WARN))

(lambda supported-nvim-version? []
  (let [min-version 8
        {:minor version} (vim.version)]
    ;; NOTE: This check fails if nvim >=1.0 is used
    (<= min-version version)))

(local M {})

(set M.config {:italic true})

(lambda M.setup [?user-config]
  (let [user-config (or ?user-config {})
        new-config (vim.tbl_deep_extend :force M.config user-config)]
    (set M.config new-config)))

(lambda M.load []
  (when (not (supported-nvim-version?))
    (warn messages.unsupported-nvim-version))
  (when (= vim.opt.background :light)
    (warn messages.unsupported-light-theme))
  (let [colorscheme-loaded? vim.g.colors_name]
    (when colorscheme-loaded?
      (vim.cmd.hi :clear)))
  (set vim.g.colors_name :palenight)
  (let [groups (require :palenight/groups)]
    (each [group hl (pairs groups)]
      (set hl.italic (and M.italic hl.italic))
      (vim.api.nvim_set_hl 0 group hl))))

M
