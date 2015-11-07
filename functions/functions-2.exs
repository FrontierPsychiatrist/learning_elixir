fizz = fn
	(0, 0, _) -> 'FizzBuzz'
	(0, _, _) -> 'Fizz'
	(_, 0, _) -> 'Buzz'
	(_, _, a) -> a
end


IO.puts fizz.(0, 0, 3)
IO.puts fizz.(0, 1, 2)
IO.puts fizz.(:a, 0, 3)
IO.puts fizz.(1, 2, :a)
