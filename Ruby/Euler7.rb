def primeFun
prime = false
counter = 2
number = 3
result = 0
sum = 0
 while counter < 10001
 range = (3...(Math.sqrt(number)+1).ceil)

 range.step(2) {|x| if number % x == 0 then prime = false; break else prime = true end  }

    if prime == true

     counter +=1
     result = number

    end
    number += 2
 end
puts result

end
primeFun()
