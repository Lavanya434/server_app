PROJECT = server_app
PROJECT_DESCRIPTION = New project
PROJECT_VERSION = 0.1.0

DEPS = worker_pool
dep_cowboy = git https://github.com/inaka/worker_pool

include erlang.mk
