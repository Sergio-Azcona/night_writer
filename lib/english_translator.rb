#converts english to Braille and prints to txt 
require './lib/alphabet_translation'

class EnglishTranslator < AlphabetTranslation

  def read_input_text
    file_data = File.open(ARGV[0], "r")
    incoming_message = file_data.read
    file_data.close
    @input_text = incoming_message.downcase.chars
  end
  
  def valid_input?
    @input_text.find_all do |letter|
      if (@alphabet_dictionary.has_key?(letter) == false)
        return puts  "Invalid character. Only English Alphabet accepted.\n Try again."
      else
        return true
      end
    end
  end

  #method takes the message and translates it
  def braille_conversion
    braille_symbols = []
    if valid_input? == true
      @input_text.each do |character|
        braille_symbols << alphabet_translation(character)
      end
    end
    braille_symbols
  end
  
  #method splits translated characters in two per element
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

  def printed_text_message
    braille_writer = File.open(ARGV[1], "w")
    braille_writer.write(braille_lines)
    braille_writer.close  
    print "\nCreated #{ARGV[1]} containing #{@input_text.size} characters"
  end
  
  def translate_to_braille
    read_input_text
    printed_text_message
  end

  def alphabet_translation(letter)
    @alphabet_dictionary[letter]
  end
end