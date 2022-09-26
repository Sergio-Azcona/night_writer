#Create a  program that will convert english to Braille 


    file_data = File.open('./lib/message.txt', "r")
    input_text = file_data.read
    
    english_message = EnglishTranslator.new.
    # file_data.close ##cannot close file until translation is complete
    input_text.chomp!
    input_text.downcase.chars 
    require 'pry';binding.pry
    # ** DOWNCASE will need to be removed if CAPITOL LETTERS accepted  **
    

end
    