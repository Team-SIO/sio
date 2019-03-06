User.seed do |s|
  s.id = 1
  s.first_name = "Mondo"
  s.last_name = "Iwagoshi"
  s.birthday = "1995/1/1"
  s.gender = 1
  s.email = "test@test.com"
  s.password = "password"
end

User.seed do |s|
  s.id = 2
  s.first_name = "Akira"
  s.last_name = "Shingai"
  s.birthday = "1995/2/2"
  s.gender = 0
  s.email = "test1@test.com"
  s.password = "password"
end

