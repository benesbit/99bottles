# bottles.rb

class Bottles
  attr_accessor :this_verse

  def verse(number)
    if (number == 1)
      last_verse()
    else

      this_verse = "#{number} bottles of beer on the wall, #{number} bottles of beer.\n"

      if (number > 2)
        this_verse << "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
      else
        this_verse << "Take one down and pass it around, #{number - 1} bottle of beer on the wall.\n"
      end

      this_verse
    end
  end

  def last_verse()
    this_verse = "1 bottle of beer on the wall, 1 bottle of beer.\n"
    this_verse << "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end
end
