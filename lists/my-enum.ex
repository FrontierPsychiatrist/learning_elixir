defmodule MyEnum do

	def all?(collection, fun) do
		_all(collection, fun, true)
	end

	defp _all([x], fun, acc), do: acc && fun.(x)
	defp _all([head | tail], fun, acc), do: _all(tail, fun, acc && fun.(head))

	def each([x], fun), do: fun.(x)
	def each([x | tail], fun) do
		fun.(x)
		each(tail, fun)
	end

	def filter([], _fun), do: []

	def filter([x | tail], fun) do
		if(fun.(x)) do
			[x | filter(tail, fun)]
		else
			filter(tail, fun)
		end
	end
end
