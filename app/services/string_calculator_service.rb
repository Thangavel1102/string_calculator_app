class StringCalculatorService
  def self.add(input)
    return 0 if input.strip.empty?

    if input.start_with?("//")
      delimiter_part, numbers_part = input.split("\n")
      delimiter = Regexp.escape(delimiter_part[2..])
      numbers = numbers_part.split(delimiter)
    else
      numbers = input.split(/[,\n]/)
    end
    
    numbers = numbers.map(&:to_i)

    negatives = numbers.select { |n| n < 0 }
    raise "Negative numbers are not allowed #{negatives.join(',')}" if negatives.any?

    numbers.sum
  end
end
