require "./lib/triangle"

def main_menu
  puts "Put in some numbers and see what kind of triangle it is!!!"
  puts "Press 's' to add a side."
  puts "Press 'x' to exit out of this menu."

  main_choice = gets.chomp

  if main_choice == 's'
    puts "Enter the length of side one."
    side1_length = gets.chomp.to_i
    puts "\n"
    puts "Enter the length of side two."
    side2_length = gets.chomp.to_i
    puts "\n"
    puts "Enter the length of side three."
    side3_length = gets.chomp.to_i
    puts "\n"
  else main_choice == 'x'
    puts "Bye-Bye!"
    puts "\n"
    main_menu
  end

  t = Triangle.new(side1_length, side2_length, side3_length)
  puts "It's #{t.type}.\n\n"
  main_menu
end

main_menu

