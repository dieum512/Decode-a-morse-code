MORSE_CODE = {
  ".-" => "A",
  "-..." => "B",
  "-.-." => "C",
  "-.." => "D",
  "." => "E",
  "..-." => "F",
  "--." => "G",
  "...." => "H",
  ".." => "I",
  ".---" => "J",
  "-.-" => "K",
  ".-.." => "L",
  "--" => "M",
  "-." => "N",
  "---" => "O",
  ".--." => "P",
  "--.-" => "Q",
  ".-." => "R",
  "..." => "S",
  "-" => "T",
  "..-" => "U",
  "...-" => "V",
  ".--" => "W",
  "-..-" => "X",
  "-.--" => "Y",
  "--.." => "Z"
}

def decode_char(morse_char)
  MORSE_CODE[morse_char]
end

def decode_word(morse_word)
  morse_chars = morse_word.split(" ")
  decoded_chars = morse_chars.map { |char| decode_char(char) }
  decoded_chars.join("")
end

def decode(morse_message)
  morse_words = morse_message.split("   ")
  decoded_words = morse_words.map { |word| decode_word(word) }
  decoded_words.join(" ")
end
