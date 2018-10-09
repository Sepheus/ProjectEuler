require 'prime'
am = 0
bm = 0
m = 0

primes = Hash.new(false)
Prime.take(1000).each { |p| primes[p] = true }

(-1000...1000).each { |a|
  (-1000...1000).each { |b|
    n = 0
    while primes[(n*n+a*n+b).abs]
      n+=1
    end
    if n > m
      am = a
      bm = b
      m = n
    end
  }
}

puts am*bm
