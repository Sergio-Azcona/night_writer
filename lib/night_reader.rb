#Create a NightReader program that will convert Braille back to English text:

class NightReader
  attr_reader :input_message
  def initialize
    @input_message = input_message
  end




  # def read_input_message
  #   input_message = File.open(ARGV[1], "r")
    
  #   note_size = input_message.size
  #   print "Created #{ARGV[1])} containing #{note_size} characters"
  #   # require 'pry';binding.pry

  #   # File.write(ARGV[1], input_message)
  # end

  # def write_output_message
  #   # output_message = File.open(ARGV[1])
  #   output_message = File.open(ARGV[1], "w")
    
  #   note_size = output_message.size
  #   print "Created #{ARGV[1])} containing #{note_size} characters"
  # end

end

#  NightReader.new.read_input_message