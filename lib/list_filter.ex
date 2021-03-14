require Integer
require String

defmodule ListFilter do
  def call(list), do: count_odd_numbers(list)

  defp count_odd_numbers(list) do
    list
    |> Enum.flat_map(fn elem -> map_value(elem) end)
    |> Enum.count(fn x -> Integer.is_odd(x) == true end)
  end

  defp map_value(elem) when is_binary(elem) do
    case Integer.parse(elem) do
      {int, _rest} -> [int]
      :error -> []
    end
  end

  defp map_value(elem) do
    [trunc(elem)]
  end
end
