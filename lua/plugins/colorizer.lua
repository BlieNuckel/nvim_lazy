return {
  "catgoose/nvim-colorizer.lua",
  event = "BufReadPre",
  opts = {
    user_default_options = {
      mode = "virtualtext",
      virtualtext = "■",
      virtualtext_inline = "after",
    },
  },
}

