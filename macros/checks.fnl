(local M {})

(lambda M.hex-char? [ch]
  (and (= :string (type ch))
       (< 0 (length ch))
       (or (ch:match "%d")
           (ch:match "[a-fA-F]"))))

(lambda M.hex? [input]
  (and (= :string (type input))
       (= 7 (length input))
       (= "#" (input:sub 1 1))
       (faccumulate [all-hex? true
                     i 2 7
                     &until (not all-hex?)]
         (let [ch (input:sub i i)]
           (M.hex-char? ch)))))

(lambda M.cterm256? [input]
  (and (= :number (type input))
       (<= 0 input 255)))

(lambda M.cterm16? [input]
  (and (= :number (type input))
       (<= 0 input 15)))

(set M.color-constants [:Black
                        :DarkBlue
                        :DarkGreen
                        :DarkCyan
                        :DarkRed
                        :DarkMagenta
                        :Brown
                        :DarkYellow
                        :LightGray
                        :LightGrey
                        :Gray
                        :Grey
                        :DarkGray
                        :DarkGrey
                        :Blue
                        :LightBlue
                        :Green
                        :LightGreen
                        :Cyan
                        :LightCyan
                        :Red
                        :LightRed
                        :Magenta
                        :LightMagenta
                        :Yellow
                        :LightYellow
                        :White])

(lambda M.color-constant? [input]
  (accumulate [any? false
               _ color-constant (ipairs M.color-constants)
               &until any?]
    (let [input (string.lower input)
          color-constant (string.lower color-constant)]
      (= color-constant input))))

(lambda M.NONE? [input]
  (= :NONE input))

M
