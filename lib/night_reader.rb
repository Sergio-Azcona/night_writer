# File.read("lib/braille.txt").size
class NightReader
  def initialize
  end

  def read_write_translation
    read_note = File.read(ARGV[0])
    # read_note.read
    require 'pry';binding.pry
    File.write(ARGV[1], read_note)


  end

end

NightReader.new.read_write_translation 