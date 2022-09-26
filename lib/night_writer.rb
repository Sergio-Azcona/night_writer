#Create a  program that will convert english to Braille 

class NightWriter
  attr_reader :input_text
  def initialize
    @input_text = input_text
    @letters = AlphabetTranslation.new
  end

  def read_input_text
    file_data = File.open('./lib/message.txt', "r")
    @input_text = file_data.read
    # require 'pry';binding.pry
    
    # file_data.close ##cannot close file until translation is complete
    @input_text.chomp!
    @input_text.downcase.chars 
    # ** DOWNCASE will need to be removed if CAPITOL LETTERS accepted  **
    
  end

  def length_of_message
    # require 'pry';binding.pry
    read_input_text.size
  end

  def terminal_message 
    print "Created #{ARGV[1]} containing #{length_of_message} characters"
  end

  #method takes the message and translates it
  def braille_conversion
    collects_symbols = []
    read_input_text.map do |character|
    collects_symbols << @letters.alphabet_conversion(character)
    # require 'pry';binding.pry
      end
    collects_symbols
  end

  

end