def doubleInteger(i)
puts "Please input a number?"
  #Double the input!
  number = gets.chomp.to_i
  @number = number * 2
end

doubleInteger(@number)
puts "Double the entered number is #{@number}." 
