%% Compatibility layer between erlsci/iso8601 and Kivra's internal fork.
%%
-module(iso8601_compat).

-export([now/0]).

-spec now () -> binary().
%% @doc Wrapper for `iso8601:format(os:timestamp())`
now() ->
  Ts = os:timestamp(),
  iso8601:format(Ts).
