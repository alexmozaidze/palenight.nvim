(local M {})

(set M.config {:italic false
               :cterm_palette :auto})

(lambda M.setup [?user-config]
  (let [user-config (or ?user-config {})
        new-config (vim.tbl_deep_extend :force M.config user-config)]
    (set M.config new-config)))

M
