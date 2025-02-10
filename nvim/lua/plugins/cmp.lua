return {
    "saghen/blink.cmp",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        completion = {
            accept = {
                auto_brackets = {
                    enabled = false,
                },
            },
        },
        keymap = {
            preset = "default",
        },
        appearance = {
            use_nvim_cmp_as_default = true,
        },
    },
}
