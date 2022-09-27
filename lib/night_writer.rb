# require './spec/spec_helper'
require './lib/english_translator'
require './lib/alphabet_translation'


    file_data = File.open(ARGV[0], "r")
    input_text = file_data.read
    
    file_data.close
    # english_message = EnglishTranslator.new.read_input_text(input_text)

    # ** DOWNCASE will need to be removed if CAPITOL LETTERS accepted  **


  # def terminal_message 
  #   print "Created #{ARGV[1]} containing #{length_of_message} characters"
  # end
    

    