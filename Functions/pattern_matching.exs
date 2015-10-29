#La simple descripción que podemos encontrar para la siguiente expresión es que estamos
#asignando el valor de dos a la variable 'a'. Sin embargo, en elixir es un poco
#diferente.
a = 2

#Elixir intenta afirmar que lo del lado derecho haga match con lo del lado izquierdo.
#En el caso anterior, del lado derecho tenemos un entero y del lado derecho una variable
#la afirmación es exitosa, ya que elixir une a la variable con el valor. Lo sé, puede
#seguir pareciendo una asignación. Veamos el siguiente caso

#5 = a

#Si la expresión anterior fuera ejecutada obtendriamos un MatchError, esto se debe a que# ya habiamos afirmado que la variable 'a' es igual a 2 . 5 no hace match con 'a'
#Llevemos al pattern matching a otro nivel

[x, y, z] = [10, 11, 12]

IO.puts to_string(x)<>","<>to_string(y)<>","<>to_string(z)
