def number_to_words(number)
  if WORDS[number].nil?
    conversion(number)
  else
    WORDS[number]
  end
end

def conversion(number)
  number_array = number.to_s.split("")
  WORDS[(number_array[0] + "0").to_i] + " " + WORDS[number_array[1].to_i]
end


SCALE = {
  100 => 'hundred',
  1000 => 'thousand',
  1000000 => 'million'
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

