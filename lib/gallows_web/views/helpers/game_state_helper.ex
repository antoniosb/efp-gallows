defmodule Gallows.Views.Helpers.GameState do
  import Phoenix.HTML, only: [raw: 1]

  @responses %{
    :won => {:success, "You Won!"},
    :loss => {:danger, "You Lost..."},
    :good_guess => {:primary, "Good guess. Wow, bulls eye!"},
    :bad_guess => {:warning, "Bad guess. Awww, almost there..."},
    :already_used => {:secondary, "This one you've picked already."}
  }

  def game_state(state) do
    @responses[state]
    |> alert()
  end

  defp alert(nil), do: ""

  defp alert({class, message}) do
    """
    <div class="alert alert-#{class}" role="alert">
      #{message}
    </div>
    """
    |> raw()
  end
end
