name "middlewares"
description "middlewares"
run_list(
	"recipe[apt]",
	"recipe[curl]",
	"recipe[vim]",
	"recipe[git]"
)
