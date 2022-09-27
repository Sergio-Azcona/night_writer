# require './spec/spec_helper'
require './lib/english_translator'
require './lib/alphabet_translation'


file_data = File.open(ARGV[0], "r")
input_text = file_data.read
file_data.close

english_message = EnglishTranslator.new.read_input_text(input_text)

braille_writer = File.open(ARGV[1], "w")
braille_message = EnglishTranslator.new.virtical_braille_characters
message_size = braille_message.size
braille_writer.write(braille_message)
braille_writer.close  
print "\nCreated #{ARGV[1]} containing #{message_size} characters\n"