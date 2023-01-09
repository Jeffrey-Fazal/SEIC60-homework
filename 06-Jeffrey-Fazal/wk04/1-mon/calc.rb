def show_menu
    puts "Calculator".center(40) # Uses the center method to appear in the middle of the divider
    puts "=" * 40 
    puts "[a] - Addition"
    puts "[s] - Subtraction"
    puts "[m] - Multiplication"
    puts "[d] - Division"
    puts "[e] - Exponent"
    puts "[r] - Squre Root"
    puts "[q] = Quit"
    print "Enter your choice: "
end

show_menu
menu_choice = gets.chomp.downcase

def calculator_function(calculation)
    case calculation
    when '+'
    puts "Lets do some addition!"
    print "First number to add: "
    first_number = gets.to_f
    print "Second number to add: "
    second_number = gets.to_f
    puts "\n#{first_number} + #{second_number} = #{first_number + second_number} \n \n"        
    when '-'
    puts "Lets do some subtraction!"
    print "First number to subtract: "
    first_number = gets.to_f
    print "Second number to subtract: "
    second_number = gets.to_f
    puts "\n#{first_number} - #{second_number} = #{first_number - second_number} \n \n"
    when '*'
    puts "Lets do some multiplication!"
    print "First number to multiply: "
    first_number = gets.to_f
    print "Second number to multiply: "
    second_number = gets.to_f
    puts "\n#{first_number} * #{second_number} = #{first_number * second_number} \n \n"
    when '/'
    puts "Lets do some division!"
    print "First number to divide: "
    first_number = gets.to_f
    print "Second number to divide: "
    second_number = gets.to_f
    puts "\n#{first_number} / #{second_number} = #{first_number / second_number} \n \n"
    when '**'
    puts "Lets do some exponents!"
    print "First number to exponent: " # No clue what the verb for exponent is 
    first_number = gets.to_f
    print "Second number to exponent: "
    second_number = gets.to_f
    puts "\n#{first_number} ** #{second_number} = #{first_number ** second_number} \n \n"
    when '√' # Should probably figure out what encoding ruby uses, asume system for now
    puts "Let's square root something"
    puts "Number to square root"
    first_number = gets.to_f
    puts "\n √#{first_number} =  #{Math.sqrt(first_number)} \n \n"
    end
end

until menu_choice == 'q'
    #do what they asked for
    case menu_choice
    when 'a'
        calculator_function '+'
    when 's'
        calculator_function '-'
    when 'm'
        calculator_function '*'
    when 'd'
        calculator_function '/'
    when 'e'
        calculator_function '**'
    when 'r'
        calculator_function '√'
    else 
        puts "Invalid selection"
    end
    # Gives time for the user to see the anwer before calling the menu
    puts "Enter any key to see menu" 
    anykey = gets

    show_menu
    menu_choice = gets.chomp.downcase
end
puts "Thanks for using this calculator, program will now quit..."