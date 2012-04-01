-module(json_test).
-export([encode/0, decode/0]).
-include_lib("../../jsonerl/src/jsonerl.hrl").
-record(test, {a, b, c}).


encode() ->
    Struct = {struct,[{"a",2},{"b",2},{"c",3}]},
    Json = mochijson2:encode(Struct),
    io:format("~p ~n",[Json]).