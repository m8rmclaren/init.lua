local harpoon = require("harpoon")
local conf = require("telescope.config").values

harpoon:setup()

-- basic telescope configuration
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

--vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>c", function() harpoon:list():clear() end)
vim.keymap.set("n", "<leader>e", function() toggle_telescope(harpoon:list()) end, { desc = "Open Harpoon window in Telescope" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-H-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-H-N>", function() harpoon:list():next() end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(3) end)
