defmodule Aoc2021 do
  @moduledoc """
  Each function answers the puzzle for each day of [Advent of Code][1]. Each
  function has doctests that solve the example input. So no spoilers in this
  module. Other than the actual code that solves the puzzle of course. The code
  can definitely be better as I am a novice Elixir coder.

  [1]: https://adventofcode.com
  """

  @doc """
  Day one. Figure out how quickly the depth increases.

  As the submarine drops below the surface of the ocean, it automatically
  performs a sonar sweep of the nearby sea floor. On a small screen, the sonar
  sweep report (your puzzle input) appears: each line is a measurement of the
  sea floor depth as the sweep looks further and further away from the
  submarine.

  For example, suppose you had the following report:

  ```
  199
  200
  208
  210
  200
  207
  240
  269
  260
  263
  ```

  This report indicates that, scanning outward from the submarine, the sonar
  sweep found depths of 199, 200, 208, 210, and so on.

  The first order of business is to figure out how quickly the depth increases,
  just so you know what you're dealing with - you never know if the keys will
  get carried into deeper water by an ocean current or a fish or something.

  To do this, count the number of times a depth measurement increases from the
  previous measurement. (There is no measurement before the first measurement.)
  In the example above, the changes are as follows:

  ```
  199 (N/A - no previous measurement)
  200 (increased)
  208 (increased)
  210 (increased)
  200 (decreased)
  207 (increased)
  240 (increased)
  269 (increased)
  260 (decreased)
  263 (increased)
  ```

  In this example, there are 7 measurements that are larger than the previous
  measurement.

  How many measurements are larger than the previous measurement?

  ## Parameters

    - depths: List that containts sonar depth measurements

  ## Examples

      iex> Aoc2021.day_one([199, 200, 208, 210, 200, 207, 240, 269, 260, 263])
      7
  """
  @spec day_one(list) :: integer
  def day_one(depths) do
    depths
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.filter(fn [l, r] -> l < r end)
    |> Enum.count
  end

  @doc """
  Day one part two. Figure out how quickly the depth increases but this time
  using a three-measurement sliding window to reduce noise in the data.

  Considering every single measurement isn't as useful as you expected: there's
  just too much noise in the data.

  Instead, consider sums of a three-measurement sliding window. Again
  considering the above example:

  ```
  199  A
  200  A B
  208  A B C
  210    B C D
  200  E   C D
  207  E F   D
  240  E F G
  269    F G H
  260      G H
  263        H
  ```

  Start by comparing the first and second three-measurement windows. The
  measurements in the first window are marked A (199, 200, 208); their sum is
  199 + 200 + 208 = 607. The second window is marked B (200, 208, 210); its sum
  is 618. The sum of measurements in the second window is larger than the sum of
  the first, so this first comparison increased.

  Your goal now is to count the number of times the sum of measurements in this
  sliding window increases from the previous sum. So, compare A with B, then
  compare B with C, then C with D, and so on. Stop when there aren't enough
  measurements left to create a new three-measurement sum.

  In the above example, the sum of each three-measurement window is as follows:

  ```
  A: 607 (N/A - no previous sum)
  B: 618 (increased)
  C: 618 (no change)
  D: 617 (decreased)
  E: 647 (increased)
  F: 716 (increased)
  G: 769 (increased)
  H: 792 (increased)
  ```

  In this example, there are 5 sums that are larger than the previous sum.

  Consider sums of a three-measurement sliding window. How many sums are larger
  than the previous sum?

  ## Parameters

    - depths: List that containts sonar depth measurements

  ## Examples

      iex> Aoc2021.day_one_p2([199, 200, 208, 210, 200, 207, 240, 269, 260, 263])
      5
  """
  @spec day_one_p2(list) :: integer
  def day_one_p2(depths) do
    depths
    |> Enum.chunk_every(3, 1, :discard)
    |> Enum.map(fn(tmw) -> Enum.sum(tmw) end)
    |> Aoc2021.day_one
  end

  @doc """
  --- Day 2: Dive! ---

  Now, you need to figure out how to pilot this thing.

  It seems like the submarine can take a series of commands like `forward 1`,
  `down 2`, or `up 3`:

  - `forward X` increases the horizontal position by `X` units.
  - `down X` increases the depth by `X` units.
  - `up X` decreases the depth by `X` units.

  Note that since you're on a submarine, down and up affect your **depth**, and
  so they have the opposite result of what you might expect.

  The submarine seems to already have a planned course (your puzzle input).
  You should probably figure out where it's going. For example:

  ```
  forward 5
  down 5
  forward 8
  up 3
  down 8
  forward 2
  ```

  Your horizontal position and depth both start at `0`. The steps above would then
  modify them as follows:

  - `forward 5` adds `5` to your horizontal position, a total of `5`.
  - `down 5` adds `5` to your depth, resulting in a value of `5`.
  - `forward 8` adds `8` to your horizontal position, a total of `13`.
  - `up 3` decreases your depth by `3`, resulting in a value of `2`.
  - `down 8` adds `8` to your depth, resulting in a value of `10`.
  - `forward 2` adds `2` to your horizontal position, a total of `15`.

  After following these instructions you would have a horizontal position of
  `15` and a depth of `10`. (Multiplying these together produces **`150`**.)

  Calculate the horizontal position and depth you woulda have after following
  the planned course. **What do you get if you multiply your final horizontal
  position by your final depth?**
  """
  def day_two() do
  end
end
