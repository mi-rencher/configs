local M = {
  "rhysd/git-messenger.vim",
}

function M.config()
  require("which-key").add({
    { "<leader>G", "<cmd>GitMessenger<cr>", desc = "Git Messenger" },
  })

  vim.g.git_messenger_always_into_popup = true

  vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = "gitmessengerpopup",
    callback = function()
      require("which-key").add({
        { "<esc>", "q", desc = "Close popup", buffer = true },
        { "<C-o>", "o", desc = "Back in git history", buffer = true },
        { "<C-i>", "O", desc = "Forward in git history", buffer = true },
      })
    end,
  })
end

return M
