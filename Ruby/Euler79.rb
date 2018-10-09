codes = [319,680,180,690,129,620,762,689,762,318,368,710,720,710,629,168,160,689,716,731,736,729,316,729,729,710,769,290,719,680,318,389,162,289,162,718,729,319,790,680,890,362,319,760,316,729,380,319,728,716]

p codes.length
p codes.uniq.length

p codes.join.split("").map { |n| n.to_i }.each_slice(3).map { |a,b,c| [a,[b,c]] }.select { |n| n[0] == 7 }.sort.uniq

#7 before all
#9 before 0
#6 before 0
#3 before 6
#1 before 9
#1 before 8
#1 before 6
#1 before 0
#2 before 9
# 2 before 0

#73162890
