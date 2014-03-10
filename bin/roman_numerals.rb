input = gets.chomp.to_i

roman_numerals = {
    1 => "I",
    5 => "V",
    9 => "IX",
    10 => "X"
}

output = ""

while (input > 0)
  # do something here
  number_of_tens = input / 10

  number_of_tens.times do
    output << roman_numerals[10]
  end

  input -= number_of_tens * 10

  number_of_nines = input / 9

  number_of_nines.times do
    output << roman_numerals[9]
  end

  input -= number_of_nines * 9

  number_of_fives = input / 5

  number_of_fives.times do
    output << roman_numerals[5]
  end

  input -= number_of_fives * 5

  number_of_ones = input / 1

  number_of_ones.times do
    output << roman_numerals[1]
  end

  input -= number_of_ones * 1
end


puts output