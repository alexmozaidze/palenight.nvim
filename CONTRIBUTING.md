# Style

Follow the [Fennel style guide][fennel-style-guide], but you can diverge when you think it makes sense.

## Use meaningful names

Avoid placeholder names, such as:
- foo, bar, baz
- x, y, z
- utils
- thingie
- etc.

## Functions

Use `lambda` or `λ` instead of `fn`.

# Modules

## Naming

```
public-module.fnl
_private-module.fnl
```

## Structure

Structure all modules (including macro modules) in the following manner:
```fnl
;;; Optional module description.
;;; Mind the 3 semicolons.

;; ╭──────────────────────────────────────────────────────────╮
;; │                         Imports                          │
;; ╰──────────────────────────────────────────────────────────╯

;; import macros

;; import modules

;; ╭──────────────────────────────────────────────────────────╮
;; │                          Locals                          │
;; ╰──────────────────────────────────────────────────────────╯

;; local macros

;; local variables/functions

;; ╭──────────────────────────────────────────────────────────╮
;; │                         Exports                          │
;; ╰──────────────────────────────────────────────────────────╯

;; literal return value (table, array, string, etc.)

;; ╭────╮
;; │ OR │
;; ╰────╯

(local M {})

;; define module properties/methods

M
```

Dummy example:
```fnl
(local {: mooify} (require :cow))

(lambda string->cow [input]
  (assert (= (type input) :string))
  (mooify input))

(local M {})

(set M.string_to_cow string->cow)

(lambda M.moo []
  (print "Moo!"))

M
```

# Adding/removing/renaming internal colors

> [!NOTE]\
> Keep in mind, you are not restricted at runtime, those are just my little guardrails I made to keep all colors consistent.

In order to add/remove/rename colors, you have to:

<div align="center">

1. Modify schema

</div>

Schema determines what colors must be present in every color table at compile-time. It's just an array of color names.

Open up [macros/colors-table.fnl](macros/colors-table.fnl) and modify the [`schema`](macros/colors-table.fnl#L5).

<div align="center">

2. Update colors

</div>

Now that you've updated the schema, you have to update the color tables in [palenight/colors](fnl/palenight/colors) directory.

<div align="center">

3. Build

</div>

Once you've matched all the colors, you can safely run `make` to test out your changes.

# Most important part...

<div align="center">

**Don't be afraid to ask!**

</div>

You can always ask about anything in [discussions][discussions], propose a change before starting to work on it, or just to get help.

Thanks for reading, and happy coding!

[fennel-style-guide]: https://fennel-lang.org/style
[discussions]: https://github.com/alexmozaidze/palenight.nvim/discussions
