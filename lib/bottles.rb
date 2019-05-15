# bottles.rb

class Bottles
  attr_accessor :this_verse

  def initialize
    this_verse = ""
  end

  def verse(number)
    return second_to_last_verse if number == 1
    return third_to_last_verse if number == 2
    return final_verse if number == 0

    this_verse = "#{number} bottles of beer on the wall, #{number} bottles of beer.\n"
    this_verse << "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"

    this_verse
  end

  def verses(num1, num2)
    @ret_verse = verse(num1)
    @ret_verse << "\n"
    @ret_verse << verse(num2)
  end

  def final_verse
    this_verse = "No more bottles of beer on the wall, no more bottles of beer.\n"
    this_verse << "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def third_to_last_verse
    this_verse = "2 bottles of beer on the wall, 2 bottles of beer.\n"
    this_verse << "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end

  def second_to_last_verse
    this_verse = "1 bottle of beer on the wall, 1 bottle of beer.\n"
    this_verse << "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end
end
