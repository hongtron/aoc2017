captcha = File.read("input.txt").chomp.chars.map(&:to_i)

matches = captcha.select.with_index do |number, i|
  number == captcha[i+1]
end

matches << captcha.last if captcha.last == captcha.first

puts matches.reduce(0, :+)
