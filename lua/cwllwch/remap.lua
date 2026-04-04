vim.g.mapleader = " "

-- filesystem + git
vim.keymap.set("n", "<leader>fs", vim.cmd.Ex)
vim.keymap.set("n", "<leader>gg", vim.cmd.Neogit)
vim.keymap.set("n", "<leader>ss", vim.cmd.w)
vim.keymap.set("n", "<leader>ap", vim.cmd.so)

-- marks
vim.keymap.set("n", "<C-d>m", ":delm! <CR>")

-- Tab controls
vim.keymap.set("n", "<leader>tn", function () vim.cmd.tabnew() vim.cmd.Ex() end)
vim.keymap.set("n", "<leader>tc", vim.cmd.tabclose)
vim.keymap.set("n", "<leader>tl", vim.cmd.tabnext)
vim.keymap.set("n", "<leader>th", vim.cmd.tabprevious)

-- Window controls 
vim.keymap.set("n", "<leader>sp", vim.cmd.sp) -- horizontal split
vim.keymap.set("n", "<leader>vs", vim.cmd.vs) -- vertical split
vim.keymap.set("n", "<leader>ch", ":wincmd h <CR>") -- move to the right window
vim.keymap.set("n", "<leader>cj", ":wincmd j <CR>") -- move cursor to the window below
vim.keymap.set("n", "<leader>ck", ":wincmd k <CR>") -- move cursor to the window above
vim.keymap.set("n", "<leader>cl", ":wincmd l <CR>") -- move cursor to the window to the left
vim.keymap.set("n", "<leader>cx", ":close <CR>") -- close current window
vim.keymap.set("n", "<leader>wi", ":vertical resize +10 <CR>")
vim.keymap.set("n", "<leader>wd", ":vertical resize -10 <CR>")
vim.keymap.set("n", "<leader>hd", ":resize -10 <CR>")
vim.keymap.set("n", "<leader>hi", ":resize +10 <CR>")

-- Terminal 
vim.keymap.set("n", "<leader>sh", ":terminal <CR> :startinsert <CR>")
vim.keymap.set("t", "<C-c>", [[<C-\><C-n>]])

-- movement 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("i", "<C-4>", "<Esc>$a<Right>")
vim.keymap.set("i", "<C-->", "<Esc>_a<Left>")

-- aerial    
vim.keymap.set("n", "<leader>l", "<cmd>AerialToggle!<CR>")
vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })

-- gitgutter
vim.keymap.set("n", "<leader>mm", "<cmd>GitGutterFold<CR>")

-- null register - for when you want to send something to beyond the grave
vim.keymap.set("n", "x", "\"_")

-- consulting (o for oracle)
vim.keymap.set("n", "<leader>or", "<cmd>register<CR>") 
vim.keymap.set("n", "<leader>om", "<cmd>marks<CR>")

-- LSP
vim.keymap.set("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true})
vim.keymap.set("n", "<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true})

-- luasnip
vim.keymap.set("i", "<C-s>", function() require("luasnip").expand() end) 
vim.keymap.set("i", "<C-j>", function() require("luasnip").jump(1) end) 
vim.keymap.set("i", "<C-k>", function() require("luasnip").jump(-1) end) 
