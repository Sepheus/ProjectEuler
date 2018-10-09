require 'prime'

primes = Prime.take_while { |n| n < 100/2 }
p primes
maxLen = 0
sum = 0

primes.length.times { |i|
  sublist = []
  primes.each { |n|
    sublist.push(n)
  }
  subSum = sublist.inject(:+)
  if subSum > sum && subSum.prime? && sublist.length > maxLen && subSum < 100
    maxLen = sublist.length
    sum = subSum
  end
  primes = primes[1..primes.length]
}

puts sum
