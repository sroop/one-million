def number_to_words(number)
  digits = number.to_s.length
  case digits
  when 7
    "one million"
  when 4..6
    thousand_conversion(number)
  when 3
    hundred_conversion(number)
  when 2
    tens_conversion(number)
  when 1
    WORDS[number]
  end
end

def thousand_conversion(number)
  split_array = number.to_s.chars
  number_for_part_two = split_array.pop(3).join("")
  number_for_part_one = split_array.join("").to_i
  part_one = number_to_words(number_for_part_one) + " " + "thousand"
  part_two = number_to_words(number_for_part_two.sub(/^[0]*/,"").to_i)
  if number_for_part_two == "000"
    part_one
  elsif number_for_part_two.chars[0] == "0"
    part_one + " and " + part_two
  else
    part_one + " " + part_two
  end
end

def hundred_conversion(number)
  number_array = number.to_s.split(//, 2)
  part_one = WORDS[number_array[0].to_i] + " " + "hundred"
  part_two = "and " + number_to_words(number_array[1].to_i)
  number_array[1] == "00" ? part_one : part_one + " " + part_two
end

def tens_conversion(number)
  if WORDS[number].nil?
    number_array = number.to_s.split(//, 2)
    WORDS[(number_array[0] + "0").to_i] + " " + WORDS[number_array[1].to_i]
  else
    WORDS[number]
  end
end

def number_array(number, slice_count)
  number.to_s.reverse.chars.each_slice(slice_count).map(&:join).reverse.map{|n| n.reverse }
end

def first_half(number)
  number_array(number)[0]
end

def second_half(number)
  number_array(number)[1]
end

WORDS = {
  0 => '',
  00 => '',
  000 => '',
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

# puts number_to_words(40050)
# (1..10000).each { |num| puts number_to_words(num) }
