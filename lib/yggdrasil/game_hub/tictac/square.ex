defmodule Yggdrasil.GameHub.Tictac.Square do
  @moduledoc """
  This module represents a square on a Tic Tac Toe board.
  """
  use TypedStruct

  typedstruct do
    field(:name, atom())
    field(:letter, String.t())
  end

  @doc """
  Builds and returns a board square.

  ## Examples

      iex> alias Yggdrasil.GameHub.Tictac.Square
      iex> Square.build(:sq1)
      %Square{name: :sq1, letter: nil}

      iex> alias Yggdrasil.GameHub.Tictac.Square
      iex> Square.build(:sq2, "X")
      %Square{name: :sq2, letter: "X"}

  """
  @spec build(name :: atom(), letter :: String.t() | nil) :: t()
  def build(name, letter \\ nil) do
    struct(__MODULE__, %{name: name, letter: letter})
  end

  @doc """
  Returns if the square is open. True if no player has claimed the square. False
  if a player occupies it.

  ## Examples

      iex> alias Yggdrasil.GameHub.Tictac.Square
      iex> Square.is_open?(%Square{name: :sq1, letter: nil})
      true

      iex> alias Yggdrasil.GameHub.Tictac.Square
      iex> Square.is_open?(%Square{name: :sq1, letter: "O"})
      false

      iex> alias Yggdrasil.GameHub.Tictac.Square
      iex> Square.is_open?(%Square{name: :sq1, letter: "X"})
      false

  """
  @spec is_open?(t()) :: boolean()
  def is_open?(%__MODULE__{letter: nil}), do: true
  def is_open?(_), do: false
end
