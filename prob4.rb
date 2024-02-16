def reverse_file_content(input_file, output_file)
    begin
      content = File.read(input_file)
      reversed_content = content.reverse
      File.open(output_file, 'w') do |file|
        file.write(reversed_content)
    end
      puts "File content reversed and written to #{output_file}."
    rescue Errno::ENOENT
      puts "Error: #{input_file} does not exist."
    end
end
  
reverse_file_content("input.txt", "output.txt")
  