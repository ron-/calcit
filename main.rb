require "rainbow"

def subtract(a, b)
  (a-b)
end

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
  end
end

def advCalc
  print "Do you want to raise a number to a power or find a square root? Enter P for power and S for square root: "
  initialSelection = gets.chomp.downcase

  if initialSelection == "p"
    print "Please enter the number you would like to be exponentiated: "
    num1 = gets.chomp.to_i
    print "Please enter the number you would like to raise the previous number to: "
    num2 = gets.chomp.to_i
    puts "#{num1}".color(:blue) + " to the "+"#{num2}".color(:blue) +" result is " + "#{exponent(num1, num2)}".color(:red)
  elsif initialSelection == "s"
    print "Please eneter the number you would like to be sqaure rooted: "
    num3 = gets.chomp.to_i
    puts "The square root of " + "#{num3}".color(:blue) +" is " +"#{square_root(num3)}".color(:red)
  else
    puts "You did not enter p or s. Please try again."

  end

end

def BMICalc
  print "Please enter your weight in pounds: "
  weight = gets.chomp.to_f
  print "Please enter your height in inches: "
  height = gets.chomp.to_f
  puts "Your "+"BMI".color(:blue) +" is "+"#{(weight/(height**2))*702}".color(:red)
end

# Calculator selection and quit option -Ron

puts "   _________    __   ________________".color(:red)
puts "  / ____/   |  / /  / ____/  _/_  __/".color(:red)
puts " / /   / /| | / /  / /    / /  / /   ".color(:red)
puts "/ /___/ ___ |/ /__/ /____/ /  / /    ".color(:red)
puts " \____/_/  |_/_____|____/___/ /_/     ".color(:red)

puts "                                                           "
puts "Welcome to CalcIT!".color(:cyan) + " The GREATEST calculator ever conceived by the human mind."
puts "Please select a calculator:"
print "Enter 'a' for advanced, 'b' for basic, 'i' to calculate bmi,"
puts "'m' to calculate monthly mortgage payments or 'q' to quit calcit: "
selection = gets.chomp.downcase

while selection != "q"

  if selection == "a"

    advCalc


  elsif selection == "b"

    basic_calc

  elsif selection == "i"

    # bmi calc function
    puts "BMI calculator goes here"

  elsif selection == "m"

    # mortgage function
    puts "Mortgage calculator goes here"

  else

    puts "Please enter a valid response!"

  end

  puts "Enter 'a' for advanced, 'b' for basic, 'i' to calculate bmi,"
  puts "'m' to calculate monthly mortgage payments or 'q' to quit calcit: "

  selection = gets.chomp.downcase

end