def gcd(a, b)
  b == 0 ? a : gcd(b, a % b)
end

def lcm(a, b)
  a / gcd(a, b) * b
end

def solve(sum=1,n=1)
  n > 20 ? sum : solve(lcm(sum,n),n+1)
end

puts solve()
