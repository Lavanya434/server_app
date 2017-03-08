-module(server_app_sup).
-behaviour(supervisor).

-export([start_link/0]).
-export([init/1]).


start_link() ->
	supervisor:start_link({local,?MODULE}, ?MODULE, []).
 
init([]) ->
	init({one_for_one, 2, 100});
init(angry) ->
	init({rest_for_one, 1, 100});
init(jerk) ->
	init({one_for_all, 1, 100});

init({RestartStrategy, MaxRestart, MaxTime}) ->
	{ok, {{RestartStrategy, MaxRestart, MaxTime}, 
	[{singer,{my_serve, start_link, []},permanent, 1000, worker, [my_serve]}]}}.
