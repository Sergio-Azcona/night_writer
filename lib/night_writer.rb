# require './spec/spec_helper'
require './lib/english_translator'
require './lib/alphabet_translation'

english_message = EnglishTranslator.new
english_message.read_input_text
braille_message = english_message.braille_txt_message
