def get_grade(num1, num2, num3)
  average = (num1 + num2 + num3) / 3

  case average
  when 90..nil then 'A' # nil accounts for extra credit that brings grades above 100
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  else 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
