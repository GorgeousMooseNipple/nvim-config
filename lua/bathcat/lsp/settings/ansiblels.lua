vim.filetype.add({
    pattern = {
        [".*/ansible/.*.yml"] = "ansible",
    }
})

return {
    settings = {
        ansible = {
            python = {
                interpreterPath = "python3",
            }
        }
    },
    filetypes = {
        "ansible",
    },
}
