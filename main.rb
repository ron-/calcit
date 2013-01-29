# Calculator selection and quit option -Ron

puts "   _________    __   ________________"
puts "  / ____/   |  / /  / ____/  _/_  __/"
puts " / /   / /| | / /  / /    / /  / /   "
puts "/ /___/ ___ |/ /__/ /____/ /  / /    "
puts " \____/_/  |_/_____|____/___/ /_/     "

puts "                                                           "
puts "Welcome to CalcIT! The greatest calculator ever conceived by the human mind."
puts "Please select a calculator:"
print "Enter 'a' for advanced, 'b' for basic, or 'q' to quit calcit: "
selection = gets.chomp.downcase

while selection != "q"

  if selection == "a"

    #insert advanced calc
    puts "advanced calc"


  elsif selection == "b"

    #insert basic calc
    puts "basic calc"

  else

    puts "Please enter a valid response!"

  end

  print "Enter 'a' for advanced, 'b' for basic, or 'q' to quit calcit: "
  selection = gets.chomp.downcase

end

#end of calculator selection and quit option -Ron







def subtract(a, b)
  (a-b)
end

def exponent(a, b)
  (a**b)
end

def add(num1,num2)
  num1+num2
end

def divide(num1,num2)
  num1/num2
end

def multiply(a,b)
  a*b
end

def square_root(a)
  a.sqrt
end