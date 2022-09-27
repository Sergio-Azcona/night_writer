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
    braille_symbols#.insert(2,"\n")
    # require 'pry';binding.pry
  end

  def split_braille_message
  individual_letters = []
    braille_conversion.each do |symbol| 
      individual_letters << symbol.scan(/.{1,2}/)
    # individual_letters.each_slice(3)
      require 'pry';binding.pry 
    end
    individual_letters
  end




  def alphabet_translation(letter)
    @letters.letters_and_braille[letter]
  end

  #.insert(posititon, input)
  ## to limit the length of the line

end