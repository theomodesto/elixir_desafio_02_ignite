require Integer
require Enum

defmodule ListFilter do
  def call(list), do: list_filter(list)

  defp cast_string_to_integer(value) do
    case Integer.parse(value) do
    {value, _} -> value
    :error -> nil
    end
  end

  defp filter_odd(list) do
    Enum.filter(list, fn x ->  Integer.is_odd(cast_string_to_integer(x)) end)
  end

  defp list_filter(list) do
    Kernel.length(filter_odd(list))
  end
end
