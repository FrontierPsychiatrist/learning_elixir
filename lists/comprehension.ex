defmodule Comprehensions do
	import Lists, only: [span: 2]

	def generate_primes(n) do
		for x <- Lists.span(3, n), Enum.all?(Lists.span(2, x - 1), &(rem(x, &1) != 0)), do: x
	end

end
