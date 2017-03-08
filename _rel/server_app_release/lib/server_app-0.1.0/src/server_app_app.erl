-module(server_app_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
	server_app_sup:start_link().

stop(_State) ->
	ok.
