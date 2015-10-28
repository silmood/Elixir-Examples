#El operador capture (&) tiene una manera más rápida de crear funciones cortas a través
#del operador capture

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
