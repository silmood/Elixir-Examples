#El operador capture (&) tiene una manera más rápida de crear funciones anonimas

big_sum = fn x,y -> x + y end

#Lo que se encuentra dentro de los parentesis se convierte en una función.
#Los parametros de la función los ubicamos a través de sus posiciones. 
quick_sum = &(&1 + &2)

IO.puts "Big sum "<>(big_sum.(9,1) |> to_string)
IO.puts "Quick sum "<>(quick_sum.(9,1) |> to_string)

#Así mismo podríamos utilizar las funciones parametrizadas y el operador capture para
#hacer un gran combo

base_prefix = fn prefix -> (&(prefix<>&1)) end
mr_prefix = base_prefix.("Mr.")
mrs_prefix = base_prefix.("Mrs.")

IO.puts mr_prefix.("Potato")
IO.puts mrs_prefix.("Potato")

#Si usamos los operadores '{}' o '[]' podemos convertir el cuerpo de una función
#englobada por el operador capture a un mapa o una lista
#En este caso crearemos una función para permutar tres numeros y que devuelva sus
#posibles combinaciones en una lista

permutation = &[[&1, &2, &3] , [&1, &3, &2], [&2, &1, &3], [&2, &3, &1], [&3, &2, &1], [&3, &1, &2]]

IO.inspect permutation.(4, 5, 6)

