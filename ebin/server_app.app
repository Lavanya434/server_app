{application, 'server_app', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['my_serve','server_app_app','server_app_sup']},
	{registered, [server_app_sup]},
	{applications, [kernel,stdlib]},
	{mod, {server_app_app, []}},
	{env, []}
]}.