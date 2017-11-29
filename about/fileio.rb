# frozen_string_literal: true

describe 'File IO' do
  # create dir and file, write to it
  Dir.mkdir "temp"
  fname = "temp/test.txt"
  file = File.open(fname, "w")
  lines = ["This is line 1!", "This is line 2!", "This is line 3!"]
  file.puts lines
  file.close

  # tests
  i = 1
  File.open(fname, "r") do |f|
    f.each_line do |line|
      it "Lines should equal" do
        expect(line).to eq("This is line #{i}!\n")
        i+=1
      end
    end
  end

  # delete file and dir
  File.delete(fname)
  Dir.delete("temp")
end
