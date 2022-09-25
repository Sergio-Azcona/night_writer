# File.read("lib/braille.txt").size
class NightReader
  attr_reader :input_message
  def initialize
    @input_message = input_message
  end




  def read_input_message
    input_message = File.open(ARGV[0])
    
    note_size = input_message.size
    print "Created #{ARGV[0])} containing #{note_size} characters"
    # require 'pry';binding.pry

    # File.write(ARGV[1], input_message)
  end

  def write_output_message
    # output_message = File.open(ARGV[1])

  end

end

 NightReader.new.read_input_message