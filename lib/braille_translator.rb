require './lib/alphabet_translation'

class BrailleTranslator < AlphabetTranslation

  def read_input_text
    file_data = File.open(ARGV[0], "r")
    incoming_message = file_data.read
    file_data.close
    @input_text = incoming_message.downcase.chars
  end

  def braille_translation(braille)
    @alphabet_dictionary.find do |letter, braille_character|
        if braille == braille_character
          return letter
        end
    end
  end
end