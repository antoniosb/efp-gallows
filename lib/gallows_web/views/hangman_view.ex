defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  import Gallows.Views.Helpers.GameState

  def join_letters(letters, sep \\ " "), do: letters |> Enum.join(sep)

  def game_over?(%{game_state: game_state}) do
    game_state in [:won, :lost]
  end

  def new_game_button(conn) do
    button("New Game", to: Routes.hangman_path(conn, :create_game))
  end

  def turn(left, target) when target >= left, do: "dim"

  def turn(left, target), do: "faint"
end
