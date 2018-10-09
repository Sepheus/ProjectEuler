#Recursively extract digits.
def digits(n, d = [])
  n > 0 ? digits(n / 10, d << n % 10) : d
end

def isPandigital(n,flags=0)
  head, *tail = n
  head.nil?? flags == 0x1FF : isPandigital(tail, flags | (1 << (head - 1)))
end

(1..999).each { |n|
  (2..9).each { |i|

  }
}

p isPandigital(digits(987654312))

class Integer
  def digits(n = self, d = [])
    n > 0 ? digits(n / 10, d << n % 10) : d
  end
end

p 2895.digits
