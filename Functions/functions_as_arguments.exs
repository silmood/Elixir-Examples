#Facilmente podemos crear función que reciban otra función como argumento.
#Es muy común ver esta técnica en los lenguajes funcionales.
#En elixir podemos ver el uso de esta propiedad en varias funciones del modulo Enum

list = [2,4,6,8];
IO.inspect Enum.map(list, fn (elem) -> elem  * 2 end)

#Podemos omitir los parentesis al invocar las funciones
IO.inspect Enum.map list, fn elem -> elem * 4 end
