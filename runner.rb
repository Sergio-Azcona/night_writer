require "./lib/braille"
# require "lib/message"


# File.read("lib/braille.txt").size
File.open("lib/braille.txt", "r")
cat "lib/braille.txt"

File.write("lib/message.txt", "return message" )
# ? echo  "return message now" >  "lib/message.txt"