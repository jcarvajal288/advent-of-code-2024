defmodule Day1 do
  def reconcile_lists(data) do
    parsed_data =
      data
      |> String.split("\n")
      |> Enum.map(fn line -> String.split(line, " ") end)
      |> Enum.map(fn line -> [List.first(line), List.last(line)] end)
      |> Enum.map(fn line -> Enum.map(line, fn x -> String.to_integer(x) end) end)

    list1 =
      parsed_data
      |> Enum.map(fn line -> List.first(line) end)
      |> Enum.sort()

    list2 =
      parsed_data
      |> Enum.map(fn line -> List.last(line) end)
      |> Enum.sort()

    List.zip([list1, list2])
    |> Enum.map(fn tup -> Tuple.to_list(tup) end)
    |> Enum.map(fn line -> (List.last(line) - List.first(line)) |> Kernel.abs() end)
    |> Enum.sum()
  end
end
