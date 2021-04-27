defmodule Connect.FactorySequence do
  use Agent

  def start_link(_opts) do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  def get(name) do
    Agent.get(__MODULE__, &Map.get(&1, name))
  end

  def put(name, value) do
    Agent.update(__MODULE__, &Map.put(&1, name, value))
  end
end
