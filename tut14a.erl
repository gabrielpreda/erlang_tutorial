-module(tut14a).
-export([start/1, say_something/2]).

say_something(What, 0) ->
	done;

say_something(What, Times) ->
	io:format("~p~n", [What]),
	say_something(What, Times - 1).
	
start(Times) ->
	spawn(tut14, say_something, [hello, Times]),
	spawn(tut14, say_something, [goodbye, Times]).