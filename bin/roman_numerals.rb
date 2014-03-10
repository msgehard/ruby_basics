ROMAN_NUMERALS = {
    100 => "C",
    50 => "L",
    10 => "X",
    9 => "IX",
    5 => "V",
    1 => "I",
}

input = gets.chomp.to_i

output = ""

while (input > 0)
  ROMAN_NUMERALS.each do |key, value|
    number_of_tens = input / key

    number_of_tens.times do
      output << value
    end

    input -= number_of_tens * key
  end
end

puts output