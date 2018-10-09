def to_i(n)
  n.reduce { |a,n| a*10 + n }
end

pandigital = Hash.new(false)

[*1..9].permutation { |n|
  k = to_i(n[5..-1])
  if !pandigital[k]
    to_i(n[0...3]) * to_i(n[3...5]) == k ? pandigital[k] = true : nil
    n[0] * to_i(n[1...5]) == k ? pandigital[k] = true : nil
  end
}

p pandigital.keys.inject(:+)
