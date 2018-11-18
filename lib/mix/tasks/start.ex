defmodule Mix.Tasks.ExReason.Start do
  use Mix.Task
  @shortdoc "For Development - watches changes in Phoenix and ReasonML code."
  @moduledoc """  
   For Development - watches changes in Phoenix and ReasonML code.  
  """
  def run(_args) do
   tasks = [
    Task.async(fn -> Mix.shell.cmd "cd assets && yarn start" end),
    Task.async(fn -> Mix.shell.cmd "iex -S mix phx.server" end),
   ]
   Enum.map(tasks, &Task.await(&1, :infinity))
  end
end
