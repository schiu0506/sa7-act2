def safe_divide(dividend, divisor)
    begin
      result = dividend / divisor
    rescue ZeroDivisionError
      puts "Error: Division by zero is not allowed."
    else
      return result
    end
end

puts "Result with valid divisor:"
puts safe_divide(10, 2)

puts "\nResult with zero divisor:"
puts safe_divide(10, 0)