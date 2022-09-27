require './lib/alphabet_translation'

class BrailleTranslator < AlphabetTranslation

  def braille_translation(braille)
    @alphabet_dictionary.find do |letter, braille_character|
        if braille == braille_character
          return letter
        end
    end
  end
end