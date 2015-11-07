defmodule Lists do
	def sum([]), do: 0
	def sum([head | tail]), do: head + sum(tail)

	def max([x]), do: x
	def max([ head | tail ]), do: Kernel.max(head, max(tail))
end
