defmodule FizzBuzz do
  def build(filename) do
    filename
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, file}) do
    file =
      file
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, file}
  end

  defp handle_file({:error, _}), do: {:error, "File not found"}

  defp convert_and_evaluate_numbers(elem) do
    elem
    |> String.to_integer()
    |> evaluate_number()
  end

  defp evaluate_number(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizz_buzz
  defp evaluate_number(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_number(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_number(number), do: number
end
