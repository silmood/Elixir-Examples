#Demostrando el pattern matching al invocar funciones

defmodule Factorial do
  def of(0), do: 1
  def of(x), do: x * of(x - 1)
end
