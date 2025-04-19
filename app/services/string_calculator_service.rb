class StringCalculatorService
  def self.add(input)
    return 0 if input.strip.empty?
    
    numbers = input.split(/[,\n]/)
    
    numbers = numbers.map(&:to_i)
   
    numbers.sum
  end
end
