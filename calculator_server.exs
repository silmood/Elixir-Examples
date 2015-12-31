defmodule CalculatorServer do

  def start do
    spawn(fn ->
      loop(0)
    end)
  end

  def start(value) do
    spawn(fn ->
      loop(value)
    end)
  end

  def loop(value) do
    new_value = receive do
      :get_value -> IO.inspect value
      {:add, x} -> do_add(value, x)
      {:sub, x} -> do_sub(value, x)
      {:mul, x} -> do_mul(value, x)
      {:div, x} -> do_div(value, x)
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

  defp do_add(x, y) do
    x + y
  end

  defp do_sub(x, y) do
    x - y
  end

  defp do_mul(x, y) do
    x * y
  end

  defp do_div(x, y) do
    x / y
  end

end
