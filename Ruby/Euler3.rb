number = 600851475143
potentialFactor = 0
factor = 0
prime = false


while potentialFactor <= Math.sqrt(number).to_i
  potentialFactor += 1
  if number % potentialFactor == 0
    range = (3...potentialFactor)
    range.step(2) { |x| if potentialFactor % x == 0 then prime = false; break else prime = true end }
    if prime then factor = potentialFactor end
  end
end

puts factor
