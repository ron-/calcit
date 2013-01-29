def add(num1,num2)
  num1+num2
end

def subtract(a, b)
  (a-b)
end

def multiply(a,b)
  a*b
end

def divide(num1,num2)
  num1/num2
end

def exponent(a, b)
  (a**b)
end

def square_root(a)
  a.sqrt
end


def basic_calc
  print "What type of basic calc would you like to perform?  Add, Subtract, Multiply or Divide? "
  operation = gets.chomp.downcase
  case operation
    when "add"
      print "What is the first number you're adding? "
      num1 = gets.chomp.to_i
      print "Ok, what is the second number you're adding to #{num1}? "
      num2 = gets.chomp.to_i
      puts "Your answer is: #{add(num1,num2)}"

    when "subtract"
      print "What is the larger number of your subtraction? "
      a = gets.chomp.to_i
      print "Ok, what is the smaller number you're subtracting from #{a}? "
      b = gets.chomp.to_i
      puts "Your answer is: #{subtract(a, b)}"

    when "multiply"
      print "What is the first number you're multipling? "
      a = gets.chomp.to_i
      print "Ok, what is the second number you're multipling with #{a}? "
      b = gets.chomp.to_i
      puts "Your answer is: #{multiply(a, b)}"

    when "divide"
      print "What is the first number your division? "
      num1 = gets.chomp.to_i
      print "Ok, what is the second number you're dividing into #{num1}? "
      num2 = gets.chomp.to_i
      puts "Your answer is: #{divide(num1, num2)}"


def advCalc
  print "Do you want to raise a number to a power or find a square root? Enter P for power and S for sqaure root: "
  initialSelection = gets.chomp.downcase

  if initialSelection == "p"
    print "Please enter the number you would like to be exponentiated: "
    num1 = gets.chomp.to_i
    print "Please enter the number you would like to raise the previous number to: "
    num2 = gets.chomp.to_i
    puts "#{num1} to the #{num2} result is #{exponent(num1, num2)}"
  elsif initialSelection == "s"
    print "Please eneter the number you would like to be sqaure rooted: "
    num3 = gets.chomp.to_i
    puts "The square root of #{num3} is #{square_root(num3)}"
  else
    puts "You did not enter p or s. Please try again."

  end

end


