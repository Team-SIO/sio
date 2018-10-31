User.seed do |s|
  s.id = 1
  s.first_name = "Mondo"
  s.last_name = "Iwagoshi"
  s.birthday = "1995/1/1"
  s.gender = 1
  s.email = "mondo@gmail.com"
  s.password = "mondomondo"
end

User.seed do |s|
  s.id = 2
  s.first_name = "Akira"
  s.last_name = "Shingai"
  s.birthday = "1995/2/2"
  s.gender = 0
  s.email = "shingai@gmail.com"
  s.password = "shingai"
end

User.seed do |s|
  s.id = 3
  s.first_name = "Satoshi"
  s.last_name = "Ono"
  s.birthday = "1995/3/3"
  s.gender = 0
  s.email = "ono@gmail.com"
  s.password = "onoono"
end

