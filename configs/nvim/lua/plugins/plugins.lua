return {
  {
    "tribela/transparent.nvim",
    event = "VimEnter",
    config = true,
  },
  {
    "alexghergh/nvim-tmux-navigation",
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
 ________   _______   ________  ___      ___ ___  _____ ______      
|\   ___  \|\  ___ \ |\   __  \|\  \    /  /|\  \|\   _ \  _   \    
\ \  \\ \  \ \   __/|\ \  \|\  \ \  \  /  / | \  \ \  \\\__\ \  \   
 \ \  \\ \  \ \  \_|/_\ \  \\\  \ \  \/  / / \ \  \ \  \\|__| \  \  
  \ \  \\ \  \ \  \_|\ \ \  \\\  \ \    / /   \ \  \ \  \    \ \  \ 
   \ \__\\ \__\ \_______\ \_______\ \__/ /     \ \__\ \__\    \ \__\
    \|__| \|__|\|_______|\|_______|\|__|/       \|__|\|__|     \|__|
            ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
      opts.theme = "doom"
    end,
  },
}