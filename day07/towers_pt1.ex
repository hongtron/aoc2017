candidates =
  "./input.txt"
  |> File.stream!
  |> Stream.map(&String.split/1)
  |> Enum.flat_map(&Enum.take(&1, 1))

ineligible =
  "./input.txt"
  |> File.stream!
  |> Stream.filter(&String.contains?(&1, " -> "))
  |> Stream.map(&String.split(&1, " -> "))
  |> Stream.map(&Enum.at(&1, 1))
  |> Stream.map(&String.trim/1)
  |> Enum.flat_map(&String.split(&1, ", "))

IO.inspect(candidates -- ineligible)
