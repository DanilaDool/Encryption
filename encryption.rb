require 'digest'

puts 'Введите слово или фразу для шифрования:'
word = gets.chomp

digest = ['MD5', 'SHA1']

puts 'В какую шифровку перевести?'

digest.each_with_index do |value, index|
  puts "#{index + 1}.#{value}"
end

index_digest = gets.chomp.to_i

if index_digest - 1 == 0
  puts Digest::MD5.hexdigest(word)
elsif index_digest - 1 == 1
  puts Digest::SHA1.hexdigest(word)
end
