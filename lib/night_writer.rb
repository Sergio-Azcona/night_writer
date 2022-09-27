# require './spec/spec_helper'
require './lib/english_translator'
require './lib/alphabet_translation'


file_data = File.open(ARGV[0], "r")
input_text = file_data.read
# ARGV.clear
file_data.close

english_message = EnglishTranslator.new

english_message.read_input_text(input_text)

braille_message = english_message.virtical_braille_characters
braille_writer = File.open(ARGV[1], "w")
braille_writer.write(braille_message)
# require 'pry';binding.pry
message_size = braille_message.size
# braille_writer.close  
print "\nCreated #{ARGV[1]} containing #{message_size} characters\n"