list_concat = fn a, b when is_list(a) and is_list(b) ->  a ++ b end

IO.inspect list_concat.([:a, :b], [:c, :d])

sum = fn x, y, z -> x + y + z end

IO.inspect sum.(1,2,3)

pair_tuple_to_list = fn {i, j} -> [i, j] end

IO.inspect pair_tuple_to_list.({1234, 5678})
