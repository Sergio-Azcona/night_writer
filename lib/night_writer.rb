#Create a  program that will convert english to Braille 


class NightWriter
  attr_reader :input_text
  def initialize
    @input_text = input_text
    
  end

  def read_input_text
    file_data = File.open('./lib/message.txt', "r")
    @input_text = file_data.read
    # require 'pry';binding.pry
  end

  def length_of_message
    # require 'pry';binding.pry
    read_input_text.size
  end

  def terminal_message 
    print "Created #{ARGV[1]} containing #{length_of_message} characters"
  end

end