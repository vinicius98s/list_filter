defmodule ListFilter do
  require Integer

  @moduledoc """
  Documentation for `ListFilter`.
  """

  @doc """
  Counts the total of odd numbers of a given list.
  These numbers can be either a string or an integer.

  ## Examples

      iex> ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
      3

  """
  def call(list), do: filter(list)

  defp filter(list) do
    list
    |> Enum.filter(&filter_odd/1)
    |> Enum.count()
  end

  defp filter_odd(element) when is_integer(element), do: Integer.is_odd(element)

  defp filter_odd(element) do
    case Integer.parse(element) do
      :error -> false
      {number, _} -> Integer.is_odd(number)
    end
  end
end
