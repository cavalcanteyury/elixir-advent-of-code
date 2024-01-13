defmodule Solutions.Year2023.Day1 do
  def part_one(file_stream) do
    file_stream
    |> Enum.map(&sanitize_string/1)
    |> Enum.map(&create_array/1)
    |> Enum.sum()
  end

  def part_two(file_stream) do
    file_stream
    |> Enum.map(&transform_string/1)
    |> Enum.map(&sanitize_string/1)
    |> Enum.map(&create_array/1)
    |> Enum.sum()
  end

  def sanitize_string(string) do
    string
    |> String.trim()
    |> String.replace(~r/[^\d]/, "")
    |> String.to_integer()
  end

  def create_array(num) do
    if (num <= 9) do
      string = "#{num}" <> "#{num}"
      String.to_integer(string)
    else
      digits = Integer.digits(num)
      Integer.undigits([Enum.at(digits, 0), Enum.at(digits, -1)])
    end
  end

  def transform_string(string) do
    string
    |> String.replace("zero", "z0o")
    |> String.replace("one", "o1e")
    |> String.replace("two", "t2o")
    |> String.replace("three", "t3e")
    |> String.replace("four", "f4r")
    |> String.replace("five", "f5e")
    |> String.replace("six", "s6x")
    |> String.replace("seven", "s7n")
    |> String.replace("eight", "e8t")
    |> String.replace("nine", "n9e")
  end
end
