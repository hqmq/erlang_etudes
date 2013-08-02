-module(geom).
-export([area/1]).
-include_lib("eunit/include/eunit.hrl").


-spec(area({atom(), number(), number()}) -> number()).
area({Type, A, B}) -> area(Type, A, B).

-spec(area(atom(), number(), number()) -> number()).
area(Shape, A, B) when A >= 0, B >= 0 ->
  case Shape of
    rectangle -> A * B;
    triangle -> (A * B) / 2.0;
    ellipse -> math:pi() * A * B;
    _ -> 0
  end.


area_test_() -> [
  ?_assert( area({rectangle, 3,4})   =:= 12  ),
  ?_assert( area({rectangle, 0,4})   =:= 0   ),
  ?_assert( area({rectangle, 1.5,4}) =:= 6.0 ),
  ?_assert( area({triangle, 3,5})    =:= 7.5 ),
  ?_assert( area({ellipse, 2,4}) > 25.132 andalso area({ellipse, 2,4}) < 25.133),
  ?_assertException(error, function_clause, area({rectangle, -1, -1})),
  ?_assert( area({pentagon, 1, 1})   =:= 0 )
].
