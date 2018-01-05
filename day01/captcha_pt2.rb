captcha = File.read("input.txt").chomp.chars.map(&:to_i)
step = captcha.size/2

matches = captcha.select.with_index do |number, i|
  target = i + step
  target -= captcha.size if target > captcha.size
  number == captcha[target]
end

puts matches.reduce(0, :+)
