defmodule QuickieSynth.Sound do
  def command(note) do
    {"play", ["-qn", "synth", "2", "pluck", "#{note}"]}
  end

  def play(note) do
    note
    |> command
    |> (fn ({cmd, args}) ->
      System.cmd(cmd, args)
    end).()
  end
end