% 写一个函数，用递归返回字符串中的单词数。

-module(erlang0101).
-export([countSentence/1]).
countSentence(Sentence) -> length(string:tokens(Sentence, " ")).

% 输出
% > c(erlang0101).
% {ok,erlang0101}
% > erlang0101:countSentence("one two three").
% 3