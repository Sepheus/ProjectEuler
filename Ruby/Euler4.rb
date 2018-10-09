#Recursive example.
def to_i(n, acc = 0)
  head, *tail = n
  head.nil?? acc : to_i(tail, acc*10+head)
end

#Iterative example.
def to_i2(n)
  i = 0
  acc = 0
  while i < n.length
    acc = acc*10 + n[i]
    i+=1
  end
  acc
end

#Ruby built-in  example.
def to_i3(n)
  n.reduce { |a,n| a*10 + n }
end

#Recursive using the head as the accumulator.
def to_i4(n)
  head, num, *tail = n
  num.nil?? head : to_i4([head*10+num, *tail])
end

#Recursively extract digits.
def digits(n, d = [])
  n > 0 ? digits(n / 10, d << n % 10) : to_i(d)
end

#Ruby solution.
def solve()
  m = 0
  999.downto(100) { |i|
    999.downto(100) { |j|
      n = i * j
      if n > m
        m = n == digits(n) ? n : m
      end
    }
  }
  m
end

#Generic iterative solution.
def solve2()
  i = 999
  j = 999
  m = 0
  while i >= 100
    while j >= 100
      n = i * j
      if n > m
        m = n == digits(n) ? n : m
      end
      j -= 1
    end
    i -= 1
    j = 999
  end
  m
end

#puts solve()
#puts solve2()

arr = []
999.downto(100) { |i| 999.downto(100) { |j| arr << i*j } }
p arr.reduce(0) { |m,n| n > m ? n == digits(n) ? n : m : m }
