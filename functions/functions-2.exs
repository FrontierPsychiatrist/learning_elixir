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

fizzbuzz = fn n -> fizz.(rem(n, 3), rem(n, 5), n) end

IO.puts fizzbuzz.(10)
IO.puts fizzbuzz.(11)
IO.puts fizzbuzz.(12)
IO.puts fizzbuzz.(13)
IO.puts fizzbuzz.(14)
IO.puts fizzbuzz.(15)
IO.puts fizzbuzz.(16)
