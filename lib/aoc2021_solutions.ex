defmodule Aoc2021Solutions do
  @moduledoc """
  These are the answers for Aoc2021.
  
  **SPOILER ALERT:** The doc tests reveal the answers.
  """
  
  require Aoc2021
  
  @doc """
  Read day one puzzle input from a file and load it as a list of integers.
  """
  def read_day_one_puzzle_input do
    {:ok, data} = File.read("lib/inputs/day_one_puzzle_input.txt")
    data
    |> String.split("\n")\
    |> Enum.map(&String.to_integer/1)
  end
  
  @doc"""
  Find the answer to day one puzzle.
  
  ## Examples
  
      iex> Aoc2021Solutions.day_one_answer()
      1215
  """
  def day_one_answer() do
    Aoc2021Solutions.read_day_one_puzzle_input
    |> Aoc2021.day_one
  end

end