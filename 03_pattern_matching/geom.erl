-module(geom).
-export([area/3]).
-include_lib("eunit/include/eunit.hrl").

-spec(area(atom(), number(), number()) -> number()).
area(rectangle, Width, Height) when Width >= 0, Height >= 0 ->
  Width * Height;
area(triangle, Base, Height) when Base >= 0, Height >= 0 ->
  Base * Height / 2.0;
area(ellipse, Width, Height) when Width >= 0, Height >= 0 ->
  math:pi() * Width * Height;
area(_, _Width, _Height) -> 0.


area_test_() -> [
  ?_assert( area(rectangle, 3,4)   =:= 12  ),
  ?_assert( area(rectangle, 0,4)   =:= 0   ),
  ?_assert( area(rectangle, 1.5,4) =:= 6.0 ),
  ?_assert( area(triangle, 3,5)    =:= 7.5 ),
  ?_assert( area(ellipse, 2,4) > 25.132 andalso area(ellipse, 2,4) < 25.133),
  ?_assert( area(rectangle, -1,1)  =:= 0 ),
  ?_assert( area(pentagon, 1, 1)   =:= 0 )
].
