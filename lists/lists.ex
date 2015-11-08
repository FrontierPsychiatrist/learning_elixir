defmodule Lists do
	def sum([]), do: 0
	def sum([head | tail]), do: head + sum(tail)

	def max([x]), do: x
	def max([ head | tail ]), do: Kernel.max(head, max(tail))

	def caesar(charlist, n), do: Enum.map(charlist, &(shift_char(n, &1)))

	defp shift_char(n, c) when n + c <= ?z, do: n+c
	defp shift_char(n, c), do: n + c - 26

	def span(from, to), do: _span(from, to, [])

	defp _span(from, to, acc) when from == to, do: [ to | acc ]
	defp _span(from, to, acc) when from < to, do: _span(from, to - 1, [ to | acc ])
																 
end
