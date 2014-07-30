require './lib/triangles'

def main_menu
  loop do
    puts "Hey there! Enter 't' to calculate a triangle. Press 'x' to exit."
    menu_choice = gets.chomp
    if menu_choice == 't'
      triangle_menu
    elsif menu_choice == 'x'
      exit
    else
      puts "Sorry! Try another input."
    end
  end
end


def triangle_menu
  loop do
    puts "Hi! Let's figure out what kind of triangle you have!"
    puts "Please enter the length of side 1."
    side1 = gets.chomp
    puts "Please enter the length of side 2."
    side2 = gets.chomp
    puts "Please enter the length of side 3."
    side3 = gets.chomp
    new_triangle = Triangle.new(side1, side2, side3)
    if new_triangle.if_triangle
      if new_triangle.equilateral
        puts "Your triangle is an equilateral triangle! You lucky dog."
      elsif new_triangle.isosceles
        puts "Your triangle is an isosceles triangle! Very interesting."
      elsif new_triangle.scalene
        puts "Your triangle is a scalene triangle. How unique."
      end
      main_menu
    else
      puts "Sorry! That's not a triangle. Try again!"
      main_menu
      end
    end
  end

main_menu
