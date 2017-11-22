def even_or_odd(number)
  puts "Input your number here?"
  number=gets.chomp.to_i

  if number.even?
    puts "#{number} is Even"
  else
    puts "#{number} is Odd"
  end
end

even_or_odd(@number)
=begin
CODEWARS ERROR MESSAGE
 STDERR:
  'even_or_odd': undefined method 'chomp'
  for nil:NilClass (NoMethodError)
  from '<main>'  #
=end
