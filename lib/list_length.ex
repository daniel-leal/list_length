defmodule ListLength do
  @moduledoc """
  Este modulo contem as funções relacionadas ao cálculo de tamanho de uma lista.
  """

  @initial_length 0

  @doc """
  Calcula o tamanho de uma lista. Caso a lista esteja vazia,
  retorna 0.
  """
  @spec call(list(term())) :: non_neg_integer()
  def call(list), do: calc_length(list, @initial_length)

  defp calc_length([], count), do: count
  defp calc_length([_h | t], count), do: calc_length(t, count + 1)
end
