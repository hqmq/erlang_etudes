-module(powers).
-export([raise/2]).
-include_lib("eunit/include/eunit.hrl").

%% raise/2
-spec(raise(number(), integer()) -> number()).
raise(_Base, 0) -> 1;
raise(Base, Power) when Power > 0 ->
  raise(Base, Power, 1);
raise(Base, Power) when Power < 0 ->
  1.0 / raise(Base, -Power).

%% raise/3
raise(1, _Power, _Acc) -> 1;
raise(_Base, 0, Acc) -> Acc;
raise(Base, Power, Acc) -> raise(Base, Power -1, Base * Acc).

raise_test_() -> [
  ?_assertEqual( 1, raise(4.256, 0)),
  ?_assertEqual( 5, raise(5,1)),
  ?_assertEqual( 8, raise(2,3)),
  ?_assertEqual( -8, raise(-2,3)),
  ?_assertEqual( 1.728, raise(1.2, 3)),
  ?_assertEqual( 0.125, raise(2,-3)),
  ?_assertEqual( 1.0, raise(1,-4)),
  ?_assertEqual( 1, raise(1,10000000000))
].
