-module(factorial).

-export([fact/1]).

fact(1) ->
    1;
fact(N) ->             %parameter name must be in caps;otherwise getting error
    N * fact(N - 1).

