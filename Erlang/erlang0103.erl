% 写一个函数，在给定输入为 {error, Message} 或 success 的条件下，
% 利用匹配相应地打印出 "success" 或 "error: mes-sage".

-module(erlang0103).
-export([printMsg/1]).

printMsg(success) -> success;
printMsg({error, Message}) -> io:format("error: " ++ Message ++ "~n").

% 输出
% 17> c(erlang0103).
% {ok,erlang0103}
% 18> erlang0103:printMsg(success).
% success
% 19> erlang0103:printMsg({error, "404 not found."}).
% error: 404 not found.
% ok
% 20>