@chars = {
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
  '--..' => 'Z'
}

def letters_decode(letter)
  @current_letter = @chars[letter]
  @current_letter
end

def decode_word(word)
  @letters = word.split
  @word_decoder = ''
  @letters.each do |letter|
    letters_decode(letter)
    @word_decoder += letters_decode(letter)
  end
  print "#{@word_decoder} "
end


decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
