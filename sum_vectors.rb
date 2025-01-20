a = (1..10_000_000).to_a
b = (1..10_000_000).to_a

(0..9_999_999).each do |i|
  a[i] += b[i]
end

puts "last element = #{a[-1]}"
