require 'prime'

#primeTable = Hash.new(false)
#def primes(max)
#  nums = Array.new(max + 1, 1)
#  nums[0] = nums[1] = 0
#
#  (2..Math.sqrt(max)).each do |sieve|
#    if nums[sieve] == 1
#      (2 * sieve).step(max, sieve).each do |num|
#        nums[num] = 0
#      end
#    end
#  end

#  (2..max).select { |num| nums[num] == 1 }
#end
#Prime::EratosthenesGenerator.new.take_while{ |n| n < Math.sqrt(100_000_000) }.each { |prime| primeTable[prime] = true }
#encoded = [(0...10_000).map { |n| n.prime?? 1 : 0 }.join].pack("B*")
#list = encoded.unpack("B*").first.split("").map  { |n| n == "0" ? false : true }
#p list[9974]
#sum = 0
#Prime.take_while { |n| n < 100_000_000 }.lazy.each { |number|
#Prime.take_while { |n| n < Math.sqrt(100_000_000) }.lazy.each { |number|
#  primeTable[number] = true
#  number = number - 1
#  #p_div = number.prime_division.map { |n| n.first }
  #divisors = []
  #(1..p_div.length-1).map { |n|
  #  divisors << p_div.combination(n).map { |i| i.inject(:*) }
  #}
  #divisors.flatten!
#  divisors = (1..Math.sqrt(number)+1).lazy.select { |n| (number % n).zero? }
#  divisors.map { |d| primeTable[d+number/d] }.include?(false) ? nil : sum += number
#}
#(1..1000).each { |i|
#  (i..1000/i).each { |j|
#    primeTable[i+j] ? sum : sum -= i*j
#  }
#}
#p sum


factors = []
nums = []
n = 1
result = 1

def primes(max)
  nums = Array.new(max + 1, 1)
  nums[0] = nums[1] = 0

  (2..Math.sqrt(max)).each do |sieve|
    if nums[sieve] == 1
      (2 * sieve).step(max, sieve).each do |num|
        nums[num] = 0
      end
    end
  end

  (2..max).select { |num| nums[num] == 1 }

  return nums
end



def checkStuff (n,factors,nums)
   i = 0
  while i <= factors.length-1
    d = factors[i]
    t = d + (n / d)
    if nums[t] == 0
      return false
    end
    i+=1
  end
  return true
end

nums = primes(100_000_000)

while n <  100000000
  if n % 2 == 0 && nums[n+1] == 1 && nums[(n/2)+2] == 1
    factors = (1..Math.sqrt(n)+1).select { |div| (n % div).zero? }
    if checkStuff(n,factors,nums)
      result += n
    end
  end
      n +=1
      factors = []
end

puts result


start = Time.now
puts Time.now - start
