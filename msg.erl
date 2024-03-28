-module(msg).
-export([start/0]).

start() ->
    Pid = spawn(fun() -> receiver() end),
    sender(Pid).


sender(Pid) ->
    Pid ! {self(),hello}.   %! operator send message to itself with self , with other process process id


receiver() ->
    receive
        {From,Message} -> %pattern matching
            io:format("Received msg from ~p:~p~n", [From,Message]),    %~n is for new line   and ~p is atom having a value , not like a variable
            receiver() 
    end.