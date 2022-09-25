#Create a NightReader program that will convert Braille back to English text:

class NightReader
  attr_reader :output_message
  def initialize
    @output_message = output_message

  end



  def write_output_message
    # output_message = File.open(ARGV[1])
    output_message = File.open('braille.txt', "w")
    output_message.write(@output_message)
    new_file.close

    note_size = @output_message.size
    print "Created #{ARGV[1]} containing #{note_size} characters"


  end

end

#  NightReader.new.read_input_message