-module(dijkstra).
-export([gcd/2]).
-include_lib("eunit/include/eunit.hrl").

-spec(gcd(integer(), integer()) -> integer()).
gcd(M, N) when M =:= N -> M;
gcd(M, N) when M > N -> gcd(M-N, N);
gcd(M, N) -> gcd(M, N-M).

gcd_test_() -> [
  ?_assert( gcd(12,8) =:= 4 ),
  ?_assert( gcd(14,21) =:= 7 ),
  ?_assert( gcd(125,46) =:= 1 ),
  ?_assert( gcd(36,120) =:= 12 )
].
