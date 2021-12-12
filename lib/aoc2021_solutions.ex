defmodule Aoc2021Solutions do
  @moduledoc """
  These are the answers for [Advent of Code 2021][1]. There are also functions
  that load the puzzle input data from files in `lib/inputs`. **SPOILER ALERT:
  The doctests reveal the answers.**
  
  [1]: https://adventofcode.com
  """
  
  require Aoc2021
  
  @doc """
  Read day one puzzle input from a file and load it as a list of integers.
  """
  @spec read_day_one_puzzle_input() :: list
  def read_day_one_puzzle_input do
    {:ok, data} = File.read("lib/inputs/day_one_puzzle_input.txt")
    data
    |> String.split("\n")\
    |> Enum.map(&String.to_integer/1)
  end
  
  @doc """
  Find the answer to day one puzzle.
  
  ## Examples
  
      iex> Aoc2021Solutions.day_one_answer()
      1215
  """
  @spec day_one_answer() :: integer
  def day_one_answer() do
    Aoc2021Solutions.read_day_one_puzzle_input
    |> Aoc2021.day_one
  end
  
  @doc """
  Find the answer to day one part two puzzle.
  
  ## Examples
  
      iex> Aoc2021Solutions.day_one_p2_answer()
      1150
  """
  @spec day_one_p2_answer() :: integer
  def day_one_p2_answer() do
    Aoc2021Solutions.read_day_one_puzzle_input
    |> Aoc2021.day_one_p2
  end  
end