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


