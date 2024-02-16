file_path = "sample.rtf"

File.open(file_path, "r") do |file|
  line_number = 1
  file.each_line do |line|
    puts "#{line_number}: #{line}"
    line_number += 1
    break if line_number > 3
  end
end
