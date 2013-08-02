%% @author Michael Ries <michael@riesd.com>
%% @doc Functions for calculating the are of geometric shapes.
%% @version 0.0.1

-module(geom).
-export([area/2]).
-include_lib("eunit/include/eunit.hrl").

%% @doc calculated the are of a rectange given its width and height
-spec(area(number(), number()) -> number()).
area(Width,Height) -> Width * Height.

area_test_() -> [
  ?_assert( area(3,4)   =:= 12  ),
  ?_assert( area(0,4)   =:= 0   ),
  ?_assert( area(1.5,4) =:= 6.0 )
].
