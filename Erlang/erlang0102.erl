% 写一个递归计数到 10 的函数。

-module(erlang0102).
-export([recurCount/1]).

recurCount(10) -> 10;
recurCount(N) -> recurCount(N + 1).

% 输出
% > c(erlang0102).
% {ok,erlang0102}
% > erlang0102:recurCount(1).
% 10