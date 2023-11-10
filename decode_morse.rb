MORSE_SYMBOL = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '-----' => '0',
  '.----' => 1,
  '..---' => 2,
  '...--' => 3,
  '....-' => 4,
  '.....' => 5,
  '-....' => 6,
  '--...' => 7,
  '---..' => 8,
  '----.' => 9
}.freeze

def decode_char(morse_char)
  MORSE_SYMBOL[morse_char]
end

def decode_word(morse_words)
  @decode_word = ''
  charachters = morse_words.split
  charachters.each do |n|
    @decode_word += decode_char(n)
  end
  @decode_word
end

def decode_message(morse_message)
  @decode_message = ''
  message_words = morse_message.split('   ')
  message_words.each_with_index do |word, index|
    @decode_message += decode_word(word)
    @decode_message += ' ' unless index == message_words.size - 1
  end
  print @decode_message
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# A BOX FULL OF RUBIES
