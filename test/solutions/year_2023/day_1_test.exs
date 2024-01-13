defmodule Solutions.Year2023.Day1Test do
  use ExUnit.Case

  setup_all do
    file_path = "test/solutions/year_2023/inputs/day_1"
    file_stream = File.stream!(file_path)

    {:ok, %{file_stream: file_stream}}
  end

  describe "day one tests" do
    test "part_one/1", %{file_stream: file_stream} do
      assert 53921 = Solutions.Year2023.Day1.part_one(file_stream)
    end

    test "part_two/1", %{file_stream: file_stream} do
      assert 54676 = Solutions.Year2023.Day1.part_two(file_stream)
    end
  end
end
