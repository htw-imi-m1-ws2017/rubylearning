# frozen_string_literal: true

describe 'File IO' do
  # put files in temp
  Dir.mkdir "temp"
  fname = "temp/test.txt"
  file = File.open(fname, "w")
  file.puts "This is a file!"
  file.close

  File.delete(fname)
  Dir.delete("temp")
end
