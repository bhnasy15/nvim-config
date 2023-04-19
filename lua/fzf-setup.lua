require'fzf-lua'.setup{
	files = {
	  cmd            = "fd . -t f -I --hidden -E .git",
	},
}
