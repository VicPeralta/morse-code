MAP = hash.new
MAP['.-'] = 'A'
MAP['-...'] = 'B'
MAP['-.-.'] = 'C'
MAP['-..'] = 'D'
MAP['.'] = 'E'
MAP['..-.'] = 'F'
MAP['--.'] = 'G'
MAP['....'] = 'H'
MAP['..'] = 'I'
MAP['.---'] = 'J'
MAP['-.-'] = 'K'
MAP['.-..'] = 'L'
MAP['--'] = 'M'
MAP['-.'] = 'N'
MAP['---'] = 'O'
MAP['.--.'] = 'P'
MAP['--.-'] = 'Q'
MAP['.-.'] = 'R'
MAP['...'] = 'S'
MAP['-'] = 'T'
MAP['..-'] = 'U'
MAP['...-'] = 'V'
MAP['.--'] = 'W'
MAP['-..-'] = 'X'
MAP['-.--'] = 'Y'
MAP['--..'] = 'Z'
MAP['-----'] = '0'
MAP['.----'] = '1'
MAP['..---'] = '2'
MAP['...--'] = '3'
MAP['....-'] = '4'
MAP['.....'] = '5'
MAP['-....'] = '6'
MAP['--...'] = '7'
MAP['---..'] = '8'
MAP['----.'] = '9'

def decode_char(char)
  MAP[char]
end

def decode_word(word)
  characters = word.split(' ')
  decode_word = ''
  characters.each do |c|
    decode_word += decode_char(c)
  end
  decode_word
end

def decode(message)
  words = message.split('   ')
  words = words.map { |word| decode_word(word) }
  return words.join('')
end
