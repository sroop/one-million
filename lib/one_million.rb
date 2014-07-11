def number_to_words(number)
  digits = number.to_s.length
  case digits
  when 4

  when 3
    hundred_conversion(number)
  when 2
    WORDS[number].nil? ? tens_conversion(number) : WORDS[number]
  when 1
    WORDS[number]
  end
end

 000

def hundred_conversion(number)
  number_array = number.to_s.split(//, 2)
  part_one = WORDS[number_array[0].to_i] + " " + SCALE[100]
  if number_array[1] != "00"
    part_two = " and " + tens_conversion(number_array[1].to_i)
    part_one + part_two
  else
    part_one
  end
end

def tens_conversion(number)
  number_array = number.to_s.split("")
  WORDS[(number_array[0] + "0").to_i] + " " + WORDS[number_array[1].to_i]
end


SCALE = {
  100 => 'hundred',
  1000 => 'thousand',
  1000000 => 'one million'
}

WORDS = {
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen',
  20 => 'twenty',
  30 => 'thirty',
  40 => 'fourty',
  50 => 'fifty',
  60 => 'sixty',
  70 => 'seventy',
  80 => 'eighty',
  90 => 'ninety'
}

