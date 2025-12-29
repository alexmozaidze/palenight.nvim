(local group (vim.api.nvim_create_augroup "palenight.nvim" {}))

(λ array-of-strings? [tbl]
  "Returns true only if the table contains all strings and is a list-like table."
  (and (vim.islist tbl)
       (accumulate [all-strings? true
                    _ val (ipairs tbl)
                    &until (not all-strings?)]
         (= :string (type val)))))

(local M {})

(λ M.autocmd [event opts]
  (assert
    (or (= :string (type event))
        (array-of-strings? event))
    "event must be a string or an array of strings")
  (assert
    (= :table (type opts))
    "opts must be a table")
  (vim.api.nvim_create_autocmd event (vim.tbl_extend :force opts {: group})))

M
