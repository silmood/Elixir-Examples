defmodule CalculatorServer do
  def start do
    spawn(&loop/0)
  end

  def loop do
    receive do
      #To define
    end
  end
end
