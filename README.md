# Advent of Code 2021

I have decided to do something that's 101 do-not-do-it. Solve Advent of Code and
do it using a language I am still learning.

To add to the difficulty, I am using Elixir. As you may know, Elixir is not only
a new language to me. It's also a different programming paradigm. I've spent
most of my programming career using object oriented languages. Delphi, C#, and
Ruby for the most part. Elixir is a functional programming language. Oh my!

The excitment and scariness of this deed.

## Organization of code

You will find the functions that solve the examples in `lib/aoc2021.ex`.

You will find the functions that load the puzzle inputs and spit the final
answer for each day (both parts) in `lib/aoc2021_solutions.ex`.

I am doing it like that so that you can safely browse `lib/aoc2021.ex` without
any spoilers. You can check how I solve each puzzle, without seeing the actual
answer for each puzzle. You will see the code of course, and that may spoil the
fun. But at least you will not see the actual answer that gets you the star.

If you want to see the answer, you can check `lib/aoc2021_solutions.ex`. It's in
the doctests. That is where I read the puzzle input and use the functions in
`aoc2021.ex` to find the answers.

## Why Elixir

I cannot explain it. Something inexplicable is drawing me to this language.
Also, leaving the safe harbor of Ruby is intriguing.

## Playing with it

You need [Erlang] and [Elixir] . I am using [Homebrew] and [asdf] to install all
dependencies on macOS. Your mileage may vary. Once you have Elixir installed,
You can play in `iex`.

```shell
iex -S mix
```

then in `iex` you can type the following, for example, to solve [day one's
puzzle example][day-one-example] — (no spoiler):

```elixir
# Find how many times the depth increases in the
# sonar list of measurements we are passing to the
# function
iex> Aoc2021.day_one([199, 200, 208, 210, 200, 207, 240, 269, 260, 263])
7
```

[Erlang]: https://exercism.org/docs/tracks/erlang/installation
[Elixir]: https://elixir-lang.org/install.html
[Homebrew]: https://brew.sh
[asdf]: https://asdf-vm.com
[day-one-example]: https://adventofcode.com/2021/day/1