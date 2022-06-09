let g:promptline_preset = {
	\'a' : [ promptline#slices#host() ],
	\'b' : [ promptline#slices#user() ],
	\'c' : [ promptline#slices#cwd(),
	\        promptline#slices#vcs_branch({'fossil': 1}) ],
	\'warn' : [ promptline#slices#last_exit_code() ]}
