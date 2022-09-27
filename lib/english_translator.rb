#Create a  program that will convert english to Braille 

class EnglishTranslator
  attr_reader :input_text
  def initialize
    @input_text = ""
    @letters = AlphabetTranslation.new
  end

  def read_input_text(incoming_message)
    incoming_message = "HOPE I Pass"
    incoming_message.chomp!
    @input_text = incoming_message.downcase.chars
  end

  
  def valid_input?
    input_text.find_all do |letter|
      if @letters.letters_and_braille.has_key?(letter) == false
        return puts "Invalid character. Only English Alphabet accepted.\n Try again."
      else
        return true
      end
    end
  end

  def length_of_message
    read_input_text(@input_text).size
  end

  #method takes the message and translates it
  def braille_conversion
    braille_symbols = []
    read_input_text(@input_text).map do |character|
    braille_symbols << @letters.alphabet_translation(character)
    
      end
    braille_symbols
  end

  def split_braille_message
  individual_letters = []
    braille_conversion.each do |symbol| 
      individual_letters << symbol.scan(/.{1,2}/).zip
    end
    individual_letters
    # require 'pry';binding.pry
  end

  def virtical_braille_characters
    row_1 = []
    row_2 = []
    row_3 = []
    new_layout = []
    split_braille_message.each do |row|
        row_1 << row[0]
        row_2 << row[1]
        row_3 << row[2]
         new_layout = row_1, row_2, row_3
    end
    new_layout
  end



  def alphabet_translation(letter)
    @letters.letters_and_braille[letter]
  end

  #.insert(posititon, input)
  ## to limit the length of the line

end