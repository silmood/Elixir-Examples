#Las estructuras que agrupan funciones en elixir son llamados modulos
#Los .exs son scripts que podemos ejecutar a través del shell
#Para cargar un script en el shell ejecutamos 'iex script.exs'
#Si deseamos compilarlo ya en el shell de elixir 'script.exs'

defmodule Times do

  #Los bloques que definen el cuerpo de una función son do - end
  def double(x) do
    x * 2
  end

  #También podemos declarar funciones inline
  def triple(x), do: x * 3

  def quadruple(x), do: double(x) + double(x)

end
