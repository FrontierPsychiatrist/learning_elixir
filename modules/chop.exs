defmodule Chop do
	
	def guess(actual, min..max) do
		current = div(min + max, 2)
		IO.puts "Is it #{current}"
		_guess(actual, min..max, current)
	end

	defp _guess(actual, _min.._max, current) when current == actual do
		IO.puts actual
	end

	defp _guess(actual, min.._max, current) when current > actual do
		guess(actual, min..current)
	end

	defp _guess(actual, _min..max, current) when current < actual do
		guess(actual, current..max)
	end
	
end
