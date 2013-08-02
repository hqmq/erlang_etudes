-module(geom).
-export([area/2]).
-include_lib("eunit/include/eunit.hrl").

area(Width,Height) -> Width * Height.

area_test_() -> [
  ?_assert( area(3,4)   =:= 12  ),
  ?_assert( area(0,4)   =:= 0   ),
  ?_assert( area(1.5,4) =:= 6.0 )
].
