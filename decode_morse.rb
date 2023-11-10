$morseSymbol = {
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
};

def decodeChar(morseChar)
  return $morseSymbol[morseChar]
end

def decodeWord(morseWords)
  @decodeWords = ""
  charachters = morseWords.split(' ')
  charachters.each do |n|
    @decodeWords += decodeChar(n)
  end
  return @decodeWords
end

def decodeMessage(morseMessage)
  @decodeMessage = ""
  messageWords = morseMessage.split('   ')
  messageWords.each_with_index do |word, index|
    @decodeMessage += decodeWord(word)
    @decodeMessage += ' ' unless index == messageWords.size - 1
  end
  print @decodeMessage
end

decodeMessage(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
#A BOX FULL OF RUBIES
