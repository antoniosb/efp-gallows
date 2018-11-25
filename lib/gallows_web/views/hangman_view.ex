defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  def join_letters(letters, sep \\ " "), do: letters |> Enum.join(sep)
end
