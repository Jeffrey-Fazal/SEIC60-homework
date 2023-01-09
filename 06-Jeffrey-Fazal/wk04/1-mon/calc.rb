def show_menu
    puts "Calculator" # TODO: Check .center
    puts "=-" * 40
    puts "[a] - Addition"
    puts "[s] - Subtraction"
    puts "[m] - Multiplication"
    puts "[d] - Division"
    puts "[e] - Exponent"
    puts "[r] - Squre Root"
    puts "[q] = Quit"
    print "Enter your choice:"
end

show_menu
menu_choice = gets.chomp.downcase

def addtion_component
    puts "First Number to Add"
    a = gets.to_f
    puts "Second Number to Add"
    b = gets.to_f
    puts "The sum of the two equals: #{a + b}"
end

def subtraction_component
    puts "First number to subtract"
    a = gets.to_f
    puts "Second number to subtract"
    b = gets.to_f
    puts "#{a} - #{b} = #{a - b}"
end

def division_component
    puts "First number to divide"
    a = gets.to_f
    puts "Second number to divide"
    b = gets.to_f
    puts "#{a} / #{b} = #{a / b}"
end

def multplication_component
    puts "First number to multiply"
    a = gets.to_f
    puts "Second number to multiply"
    b = gets.to_f
    puts "#{a} * #{b} =  #{a * b}"
end

def exponents_compontent
    puts "First number for exponent"
    a = gets.to_f
    puts "Second number to exponent"
    b = gets.to_f
    puts "#{a} ** #{b} =  #{a ** b}"
end

def squareroot_compontent
    puts "Number to square root"
    a = gets.to_f
    puts "The square root of #{a} =  #{Math.sqrt(a)}"
end

# M = P [ i(1 + i)^n ] / [ (1 + i)^n – 1]. 

# Here’s a breakdown of each of the variables:
# https://www.mymove.com/mortgage/mortgage-calculation/
# M = Total monthly payment
# P = The total amount of your loan
# I = Your interest rate, as a monthly percentage
# N = The total amount of months in your timeline for paying off your mortgage

def mortgage_compontent
    puts "How much do you owe? (e.g 100000000)"
    p = gets.to_i
    puts "What is your interest rate (e.g 4.0)"
    i = gets.to_i
    puts "How many months are you planning on paying the loan? (e.g 21)"
    n = gets.to_i
    payments = p [ i(1 + i)**n ] / [ (1 + i)**n – 1]
    #
end

until menu_choice == 'q'
    #do what they asked for
    case menu_choice
    when 'a'
        puts "You choose addition!"
        addtion_component
    when 's'
        puts "You choose subtraction!"
        subtraction_component
    when 'm'
        puts "You choose multiplication!"
        multplication_component
    when 'd'
        puts "You choose division!"
        division_component
    when 'e'
        puts "You choose exponent"
        exponents_compontent
    when 'r'
        puts "You choose square root"
        squareroot_compontent
    else 
        puts "Invalid selection"
    end
    #show the menu again
    show_menu
    menu_choice = gets.chomp.downcase
end
puts "Thanks for using this calculator"