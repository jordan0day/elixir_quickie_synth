defmodule QuickieSynth.Composition do
  def play(pause, notes) do
    for n <- String.split(notes, "", trim: true) do
      spawn(QuickieSynth.Sound, :play, [n])
      :timer.sleep(pause)
    end
  end
end