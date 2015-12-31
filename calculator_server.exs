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
      {:add, x} -> value + x
      {:sub, x} -> value - x
      {:mul, x} -> value * x
      {:div, x} -> value / x
    end
    loop(new_value)
  end

  def value(server_pid) do
    send(server_pid, :get_value)
  end

  def add(server_pid, x) do
    send(server_pid, {:add, x})
  end

  def sub(server_pid, x) do
    send(server_pid, {:sub, x})
  end

  def mul(server_pid, x) do
    send(server_pid, {:mul, x})
  end

  def div(server_pid, x) do
    send(server_pid, {:div, x})
  end

end
