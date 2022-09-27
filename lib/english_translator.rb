#Create a  program that will convert english to Braille 

class EnglishTranslator
  attr_reader :input_text
  def initialize
    @letters = AlphabetTranslation.new
  end

  def read_input_text
    # incoming_message = "HOPE"
    file_data = File.open(ARGV[0], "r")
    incoming_message = file_data.read
    file_data.close
    @input_text = incoming_message.downcase.chars
  end

  
  def valid_input?
    @input_text.find_all do |letter|
      if @letters.letters_and_braille.has_key?(letter) == false
        return puts "Invalid character. Only English Alphabet accepted.\n Try again."
      else
        return true
      end
    end
  end

  #method takes the message and translates it
  def braille_conversion
    braille_symbols = []
    @input_text.each do |character|
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
  end
  
  def virtical_braille_characters
    row_1 = []
    row_2 = []
    row_3 = []
    new_layout = []
    split_braille_message.map do |row|
      row_1 << row[0].flatten.join
      row_2 << row[1].flatten.join
      row_3 << row[2].flatten.join
      new_layout = row_1, row_2, row_3
    end
    new_layout
  end

  def braille_lines
    braille = []
    virtical_braille_characters.each do |row|
      braille << row.join + "\n"
    end
    braille.join
  end

  def braille_txt_message
    braille_writer = File.open(ARGV[1], "w")
    braille_writer.write(braille_lines)

    braille_writer.close  
    message_size = braille_lines.size
    print "\nCreated #{ARGV[1]} containing #{message_size} characters\n"
  end
  
  def alphabet_translation(letter)
    @letters.letters_and_braille[letter]
  end
end