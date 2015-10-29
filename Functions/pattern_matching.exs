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

#Lo que acabamos de hacer es hacer un match entre el patrón de la izquierda con el de
#la derecha. Pensemos que diría elixir:
# 1. Lo que está del lado derecho es una lista, lo que está del izquierdo también = true
# 2. La lista del lado derecho tiene 3 items, la del lado izquierdo también = true
# 3. El primer item del lado derecho hace match con el primero del lado izquierdo = true
# 4.El segundo item del lado derecho hace match con el segundo del lado izquierdo = true
# 5. El tercer item del lado derecho hace match con el tercero del lado izquierdo = true
# Todas las afirmaciones se cumplen por tanto pudimos igualar a las variables x, y, z
# con los items de la lista del lado derecho

IO.inspect :calendar.local_time 

#La función local_time es una función de un modulo de erlang (siempre que veamos ':' nos
# referimos a un modulo interno de erlang), la cuál nos devuelve un mapa con la fecha
# local.

{{anio, mes, dia}, tiempo} = :calendar.local_time

IO.puts "Fecha: "<>to_string(dia)<>"-"<>to_string(mes)<>"-"<>to_string(anio)
IO.write("Tiempo: ") ; IO.inspect(tiempo)

#Al correr el script nos daremos cuenta que la función calendar nos devuelve un mapa
# que contiene dos items: {{2015, 10, 28} , {22, 58, 25}}. Cada uno de ellos son mapas
# Comencemos el pattern matching :
# 1. El item del lado derecho es un mapa, el del lado izquierdo también = true
# 2. El mapa del lado derecho tiene dos items, el del lado izquierdo también = true
# 3. El primer item del lado derecho hace match con el primero del lado izquierdo = true
# 3.1 El primer item del primer mapa del lado derecho, hace match con el primer item
#     del primer mapa del lado izquierdo = true
# 3.2 El segundo item del primer mapa del lado derecho, hace match con el sengundo item
#     del primer mapa del lado izquierdo = true
# 3.3 El tercer item del primer mapa del lado derecho, hace match con el tercer item
#     del primer mapa del lado izquierdo = true
# 4.El segundo item del lado izquierdo hace match con el segundo del lado derecho = true
# En el punto número 4, el resultado es true ya que sin ningún problema podemos igualar
# un mapa a una variable.

#¿Qué sucede si solo quiero saber la hora?

{_, {hora, _, _}} = :calendar.local_time

IO.puts "Hora: "<>to_string(hora)

#Con ayuda del guión bajo podemos ignorar los valores que puede haber en esas posiciónes
# Elixir dice: "Voy a ignorar cualquier valor que se encuentre aqui"

#Solo quiero saber la hora si el año en el que estamos es 2015

{{2015, _, _}, {hora_2015, _, _}} = :calendar.local_time

IO.puts "Hora: "<>to_string(hora_2015)

#De esta manera podriamos decir que el pattern matching nos puede ayudar a hacer
#validaciones de estrucura.
