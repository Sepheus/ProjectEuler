n = 2
sum = 0
while n <= 4_000_000
  sum += n
  n = (n*4.236068).round
end
puts sum
