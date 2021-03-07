def buy_fruit(arr)
  fruits_arr = []
  arr.each do |sub_arr|
    sub_arr.each do |_|
      fruit, count = sub_arr
      break fruits_arr << [fruit] * count
    end
  end

  fruits_arr.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
