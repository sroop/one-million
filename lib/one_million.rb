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
  number_array = process_number(number, 3)
  part_one = number_to_words(number_array.first.to_i) + " thousand"
  part_two = number_to_words(number_array.last.sub(/^[0]*/,"").to_i)
  if number_array.last == "000"
    part_one
  elsif number_array.last[0] == "0"
    part_one + " and " + part_two
  else
    part_one + " " + part_two
  end
end

def hundred_conversion(number)
  number_array = process_number(number, 2)
  part_one = WORDS[number_array.first.to_i] + " hundred"
  part_two = "and " + number_to_words(number_array.last.to_i)
  number_array.last == "00" ? part_one : part_one + " " + part_two
end

def tens_conversion(number)
  if WORDS[number].nil?
    number_array = process_number(number, 1)
    WORDS[(number_array.first + "0").to_i] + " " + WORDS[number_array.last.to_i]
  else
    WORDS[number]
  end
end

def process_number(number, slice_count)
  number.to_s.reverse.chars.each_slice(slice_count).map(&:join).reverse.map{|n| n.reverse } #this converts any number into the desired array format for tens, hundreds and thousands given the slice_count
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

# (1..10000).each { |num| puts number_to_words(num) }
