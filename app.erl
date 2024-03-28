-module(app).
-export([hello_world/0,all_together/1]).

hello_world()->
    io:fwrite("hi ammaa~n"),
    io:fwrite("hi achaaaa~n"),
    io:fwrite("hi ettaaaaa~n"),
    io:fwrite("hi jithu~n").

all_together(N) ->
    [spawn(fun hello_world/0)  || _ <- lists:seq(1,N)].   %spawn makes concurrency for the execution and run independently  
                                                          %return array of process ids
                                                          % || rep list comprehension   and ids into a list