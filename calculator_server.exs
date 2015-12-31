defmodule CalculatorServer do
  def start do
    spawn(fn ->
      value = 0
      loop(value)
    end)
  end

  def loop(value) do
    new_value = receive do
      :get_value -> IO.inspect value
      {:sum, x}-> x + value
    end
    loop(new_value)
  end

  def value(server_pid) do
    send(server_pid, :get_value)
  end

  def sum(server_pid, x) do
    send(server_pid, {:sum, x})
  end
end
