defmodule Yggdrasil do
  @moduledoc """
  Yggdrasil keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  alias Yggdrasil.GameHub.Tictac.{Match, Player}

  @doc """
  Initializes a new game with the first player joining.
  """
  @spec new_game(Player.t()) :: Match.t()
  def new_game(player), do: Match.init(player)

  @doc """
  Joins an ongoing match. Returns error if not found.
  """
  @spec join_game(Player.t(), String.t()) :: {:error, String.t()}
  def join_game(_player, _server), do: {:error, "Server not found."}
end
