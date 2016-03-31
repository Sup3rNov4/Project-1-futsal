Player.destroy_all
p1 = Player.create :email => "craigslist@ga.co", :password_digest => "chicken", :name => "craig"
p2 = Player.create :email => "jt@ga.co", :password_digest => "chicken", :name => "jt"
p3 = Player.create :email => "jbyun23@hotmail.com", :password_digest => "chicken", :name => "jae"
p4 = Player.create :email => "one@ga.co", :password_digest => "chicken", :name => "1"
p5 = Player.create :email => "two@ga.co", :password_digest => "chicken", :name => "2"
p6 = Player.create :email => "three@ga.co", :password_digest => "chicken", :name => "3"
p7 = Player.create :email => "four@ga.co", :password_digest => "chicken", :name => "4"
p8 = Player.create :email => "five@ga.co", :password_digest => "chicken", :name => "5"
p9 = Player.create :email => "six@ga.co", :password_digest => "chicken", :name => "6"
p10 = Player.create :email => "seven@ga.co", :password_digest => "chicken", :name => "7"

p11 = Player.create :email => "8@ga.co", :password_digest => "chicken", :name => "8"
p12 = Player.create :email => "9@ga.co", :password_digest => "chicken", :name => "9"
p13 = Player.create :email => "10@ga.co", :password_digest => "chicken", :name => "10"
p14 = Player.create :email => "11@ga.co", :password_digest => "chicken", :name => "11"
p15 = Player.create :email => "12@ga.co", :password_digest => "chicken", :name => "12"
p16 = Player.create :email => "13@ga.co", :password_digest => "chicken", :name => "13"
p17 = Player.create :email => "14@ga.co", :password_digest => "chicken", :name => "14"
p18 = Player.create :email => "15@ga.co", :password_digest => "chicken", :name => "15"
p19 = Player.create :email => "16@ga.co", :password_digest => "chicken", :name => "16"
p20 = Player.create :email => "17@ga.co", :password_digest => "chicken", :name => "17"

p21 = Player.create :email => "18@ga.co", :password_digest => "chicken", :name => "18"
p22 = Player.create :email => "19@ga.co", :password_digest => "chicken", :name => "19"
p23 = Player.create :email => "20@ga.co", :password_digest => "chicken", :name => "20"
p24 = Player.create :email => "21@ga.co", :password_digest => "chicken", :name => "21"
p25 = Player.create :email => "22@ga.co", :password_digest => "chicken", :name => "22"
p26 = Player.create :email => "23@ga.co", :password_digest => "chicken", :name => "23"
p27 = Player.create :email => "24@ga.co", :password_digest => "chicken", :name => "24"
p28 = Player.create :email => "25@ga.co", :password_digest => "chicken", :name => "25"
p29 = Player.create :email => "26@ga.co", :password_digest => "chicken", :name => "26"
p30 = Player.create :email => "27@ga.co", :password_digest => "chicken", :name => "27"

p31 = Player.create :email => "28@ga.co", :password_digest => "chicken", :name => "28"
p32 = Player.create :email => "29@ga.co", :password_digest => "chicken", :name => "29"
p33 = Player.create :email => "30@ga.co", :password_digest => "chicken", :name => "30"
p34 = Player.create :email => "31@ga.co", :password_digest => "chicken", :name => "31"
p35 = Player.create :email => "32@ga.co", :password_digest => "chicken", :name => "32"
p36 = Player.create :email => "33@ga.co", :password_digest => "chicken", :name => "33"
p37 = Player.create :email => "34@ga.co", :password_digest => "chicken", :name => "34"
p38 = Player.create :email => "35@ga.co", :password_digest => "chicken", :name => "35"
p39 = Player.create :email => "36@ga.co", :password_digest => "chicken", :name => "36"
p40 = Player.create :email => "37@ga.co", :password_digest => "chicken", :name => "37"

Team.destroy_all
t1 = Team.create :name => "Rovers", :competition => "All-Age Men"
t2 = Team.create :name => "Strikers", :competition => "All-Age Men"

t3 = Team.create :name => "Bayern", :competition => "All-Age Mixed"
t4 = Team.create :name => "Barca", :competition => "All-Age Mixed"

t5 = Team.create :name => "Roma", :competition => "U18 Men"
t6 = Team.create :name => "Inter", :competition => "U18 Men"

t7 = Team.create :name => "Atletico", :competition => "U18 Women"
t8 = Team.create :name => "Juve", :competition => "U18 Women"

Season.destroy_all

s1 = Season.create :season => "Winter", :week => "1"
s2 = Season.create :season => "Winter", :week => "2"
s3 = Season.create :season => "Winter", :week => "3"
s4 = Season.create :season => "Winter", :week => "4"
s5 = Season.create :season => "Winter", :week => "5"
s6 = Season.create :season => "Winter", :week => "6"
s7 = Season.create :season => "Winter", :week => "7"
s8 = Season.create :season => "Winter", :week => "8"
s9 = Season.create :season => "Winter", :week => "9"
s10 = Season.create :season => "Winter", :week => "10"


Game.destroy_all
g1 = Game.create :won => "true", :lost => "false", :drawn => "false"
g2 = Game.create :won => "true", :lost => "false", :drawn => "false"
g3 = Game.create :won => "false", :lost => "true", :drawn => "false"
g4 = Game.create :won => "false", :lost => "false", :drawn => "true"
g5 = Game.create :won => "true", :lost => "false", :drawn => "false"
g6 = Game.create :won => "true", :lost => "false", :drawn => "false"
g7 = Game.create :won => "true", :lost => "false", :drawn => "false"
g8 = Game.create :won => "false", :lost => "false", :drawn => "true"
g9 = Game.create :won => "true", :lost => "false", :drawn => "false"
g10 = Game.create :won => "false", :lost => "true", :drawn => "false"

g11 = Game.create :won => "false", :lost => "true", :drawn => "false"
g12 = Game.create :won => "false", :lost => "true", :drawn => "false"
g13 = Game.create :won => "true", :lost => "false", :drawn => "false"
g14 = Game.create :won => "false", :lost => "false", :drawn => "true"
g15 = Game.create :won => "false", :lost => "true", :drawn => "false"
g16 = Game.create :won => "false", :lost => "true", :drawn => "false"
g17 = Game.create :won => "false", :lost => "true", :drawn => "false"
g18 = Game.create :won => "false", :lost => "false", :drawn => "true"
g19 = Game.create :won => "false", :lost => "true", :drawn => "false"
g20 = Game.create :won => "true", :lost => "false", :drawn => "false"

g21 = Game.create :won => "false", :lost => "true", :drawn => "false"
g22 = Game.create :won => "true", :lost => "false", :drawn => "false"
g23 = Game.create :won => "false", :lost => "true", :drawn => "false"
g24 = Game.create :won => "false", :lost => "false", :drawn => "true"
g25 = Game.create :won => "false", :lost => "true", :drawn => "false"
g26 = Game.create :won => "true", :lost => "false", :drawn => "false"
g27 = Game.create :won => "false", :lost => "true", :drawn => "false"
g28 = Game.create :won => "false", :lost => "false", :drawn => "true"
g29 = Game.create :won => "false", :lost => "true", :drawn => "false"
g30 = Game.create :won => "true", :lost => "false", :drawn => "false"

g31 = Game.create :won => "true", :lost => "false", :drawn => "false"
g32 = Game.create :won => "false", :lost => "true", :drawn => "false"
g33 = Game.create :won => "true", :lost => "false", :drawn => "false"
g34 = Game.create :won => "false", :lost => "false", :drawn => "true"
g35 = Game.create :won => "true", :lost => "false", :drawn => "false"
g36 = Game.create :won => "false", :lost => "true", :drawn => "false"
g37 = Game.create :won => "true", :lost => "false", :drawn => "false"
g38 = Game.create :won => "false", :lost => "false", :drawn => "true"
g39 = Game.create :won => "true", :lost => "false", :drawn => "false"
g40 = Game.create :won => "false", :lost => "true", :drawn => "false"

g41 = Game.create :won => "false", :lost => "true", :drawn => "false"
g42 = Game.create :won => "false", :lost => "true", :drawn => "false"
g43 = Game.create :won => "true", :lost => "false", :drawn => "false"
g44 = Game.create :won => "false", :lost => "false", :drawn => "true"
g45 = Game.create :won => "false", :lost => "false", :drawn => "true"
g46 = Game.create :won => "false", :lost => "true", :drawn => "false"
g47 = Game.create :won => "true", :lost => "false", :drawn => "false"
g48 = Game.create :won => "false", :lost => "false", :drawn => "true"
g49 = Game.create :won => "false", :lost => "true", :drawn => "false"
g50 = Game.create :won => "false", :lost => "true", :drawn => "false"

g51 = Game.create :won => "true", :lost => "false", :drawn => "false"
g52 = Game.create :won => "true", :lost => "false", :drawn => "false"
g53 = Game.create :won => "false", :lost => "true", :drawn => "false"
g54 = Game.create :won => "false", :lost => "false", :drawn => "true"
g55 = Game.create :won => "false", :lost => "false", :drawn => "true"
g56 = Game.create :won => "true", :lost => "false", :drawn => "false"
g57 = Game.create :won => "false", :lost => "true", :drawn => "false"
g58 = Game.create :won => "false", :lost => "false", :drawn => "true"
g59 = Game.create :won => "true", :lost => "false", :drawn => "false"
g60 = Game.create :won => "true", :lost => "false", :drawn => "false"

g61 = Game.create :won => "false", :lost => "true", :drawn => "false"
g62 = Game.create :won => "false", :lost => "false", :drawn => "true"
g63 = Game.create :won => "false", :lost => "true", :drawn => "false"
g64 = Game.create :won => "true", :lost => "false", :drawn => "false"
g65 = Game.create :won => "false", :lost => "true", :drawn => "false"
g66 = Game.create :won => "true", :lost => "false", :drawn => "false"
g67 = Game.create :won => "false", :lost => "false", :drawn => "true"
g68 = Game.create :won => "false", :lost => "false", :drawn => "true"
g69 = Game.create :won => "false", :lost => "true", :drawn => "false"
g70 = Game.create :won => "false", :lost => "true", :drawn => "false"

g71 = Game.create :won => "true", :lost => "false", :drawn => "false"
g72 = Game.create :won => "false", :lost => "false", :drawn => "true"
g73 = Game.create :won => "true", :lost => "false", :drawn => "false"
g74 = Game.create :won => "false", :lost => "true", :drawn => "false"
g75 = Game.create :won => "true", :lost => "false", :drawn => "false"
g76 = Game.create :won => "false", :lost => "true", :drawn => "false"
g77 = Game.create :won => "false", :lost => "false", :drawn => "true"
g78 = Game.create :won => "false", :lost => "false", :drawn => "true"
g79 = Game.create :won => "true", :lost => "false", :drawn => "false"
g80 = Game.create :won => "true", :lost => "false", :drawn => "false"

Goal.destroy_all
go1 = Goal.create :scored => "0", :assists => "2", :conceded => "8"
go2 = Goal.create :scored => "2", :assists => "4", :conceded => "N/A"
go3 = Goal.create :scored => "3", :assists => "1", :conceded => "N/A"
go4 = Goal.create :scored => "5", :assists => "2", :conceded => "N/A"
go5 = Goal.create :scored => "4", :assists => "4", :conceded => "N/A"
go6 = Goal.create :scored => "0", :assists => "0", :conceded => "14"
go7 = Goal.create :scored => "1", :assists => "2", :conceded => "N/A"
go8 = Goal.create :scored => "4", :assists => "1", :conceded => "N/A"
go9 = Goal.create :scored => "2", :assists => "2", :conceded => "N/A"
go10 = Goal.create :scored => "1", :assists => "0", :conceded => "N/A"

go11 = Goal.create :scored => "0", :assists => "0", :conceded => "14"
go12 = Goal.create :scored => "7", :assists => "3", :conceded => "N/A"
go13 = Goal.create :scored => "3", :assists => "3", :conceded => "N/A"
go14 = Goal.create :scored => "0", :assists => "2", :conceded => "N/A"
go15 = Goal.create :scored => "2", :assists => "4", :conceded => "N/A"
go16 = Goal.create :scored => "0", :assists => "1", :conceded => "12"
go17 = Goal.create :scored => "1", :assists => "2", :conceded => "N/A"
go18 = Goal.create :scored => "4", :assists => "6", :conceded => "N/A"
go19 = Goal.create :scored => "7", :assists => "2", :conceded => "N/A"
go20 = Goal.create :scored => "2", :assists => "4", :conceded => "N/A"

go21 = Goal.create :scored => "0", :assists => "3", :conceded => "20"
go22 = Goal.create :scored => "3", :assists => "8", :conceded => "N/A"
go23 = Goal.create :scored => "9", :assists => "5", :conceded => "N/A"
go24 = Goal.create :scored => "6", :assists => "6", :conceded => "N/A"
go25 = Goal.create :scored => "4", :assists => "4", :conceded => "N/A"
go26 = Goal.create :scored => "0", :assists => "1", :conceded => "22"
go27 = Goal.create :scored => "3", :assists => "5", :conceded => "N/A"
go28 = Goal.create :scored => "6", :assists => "7", :conceded => "N/A"
go29 = Goal.create :scored => "7", :assists => "3", :conceded => "N/A"
go30 = Goal.create :scored => "4", :assists => "4", :conceded => "N/A"

go31 = Goal.create :scored => "0", :assists => "0", :conceded => "18"
go32 = Goal.create :scored => "5", :assists => "4", :conceded => "N/A"
go33 = Goal.create :scored => "4", :assists => "1", :conceded => "N/A"
go34 = Goal.create :scored => "1", :assists => "2", :conceded => "N/A"
go35 = Goal.create :scored => "8", :assists => "4", :conceded => "N/A"
go36 = Goal.create :scored => "0", :assists => "0", :conceded => "18"
go37 = Goal.create :scored => "7", :assists => "2", :conceded => "N/A"
go38 = Goal.create :scored => "5", :assists => "1", :conceded => "N/A"
go39 = Goal.create :scored => "2", :assists => "5", :conceded => "N/A"
go40 = Goal.create :scored => "4", :assists => "3", :conceded => "N/A"

puts "Adding players to teams"
t1.players << p1 <<p2 << p3 << p4 << p5
t2.players << p6 <<p7 << p8 << p9 << p10
t3.players << p11 <<p12 << p13 << p14 << p15
t4.players << p16 <<p17 << p18 << p19 << p20
t5.players << p21 <<p22 << p23 << p24 << p25
t6.players << p26 <<p27 << p28 << p29 << p30
t7.players << p31 <<p32 << p33 << p34 << p35
t8.players << p36 <<p37 << p38 << p39 << p40

puts "Adding players to seasons"
s1.players << p1 << p2 << p3 << p4 << p5 << p6 << p7 << p8 << p9 << p10 << p11 <<p12 << p13 << p14 << p15 << p16 <<p17 << p18 << p19 << p20 << p21 <<p22 << p23 << p24 << p25 << p26 <<p27 << p28 << p29 << p30 << p31 <<p32 << p33 << p34 << p35 << p36 <<p37 << p38 << p39 << p40
s2.players << p1 << p2 << p3 << p4 << p5 << p6 << p7 << p8 << p9 << p10 << p11 <<p12 << p13 << p14 << p15 << p16 <<p17 << p18 << p19 << p20 << p21 <<p22 << p23 << p24 << p25 << p26 <<p27 << p28 << p29 << p30 << p31 <<p32 << p33 << p34 << p35 << p36 <<p37 << p38 << p39 << p40

puts "Adding goals to players"
p1.goals << go1
p2.goals << go2
p3.goals << go3
p4.goals << go4
p5.goals << go5
p6.goals << go6
p7.goals << go7
p8.goals << go8
p9.goals << go9
p10.goals << go10
p11.goals << go11
p12.goals << go12
p13.goals << go13
p14.goals << go14
p15.goals << go15
p16.goals << go16
p17.goals << go17
p18.goals << go18
p19.goals << go19
p20.goals << go20
p21.goals << go21
p22.goals << go22
p23.goals << go23
p24.goals << go24
p25.goals << go25
p26.goals << go26
p27.goals << go27
p28.goals << go28
p29.goals << go29
p30.goals << go30
p31.goals << go31
p32.goals << go32
p33.goals << go33
p34.goals << go34
p35.goals << go35
p36.goals << go36
p37.goals << go37
p38.goals << go38
p39.goals << go39
p40.goals << go40

puts "Adding games to teams"
t1.games << g1 << g2 << g3 << g4 << g5 << g6 << g7 << g8 << g9 << g10
t2.games << g11 << g12 << g13 << g14 << g15 << g16 << g17 << g18 << g19 << g20
t3.games << g21 << g22 << g23 << g24 << g25 << g26 << g27 << g28 << g29 << g30
t4.games << g31 << g32 << g33 << g34 << g35 << g36 << g37 << g38 << g39 << g40
t5.games << g41 << g42 << g43 << g44 << g45 << g46 << g47 << g48 << g49 << g50
t6.games << g51 << g52 << g53 << g54 << g55 << g56 << g57 << g58 << g59 << g60
t7.games << g61 << g62 << g63 << g64 << g65 << g66 << g67 << g68 << g69 << g70
t8.games << g71 << g72 << g73 << g74 << g75 << g76 << g77 << g78 << g79 << g80
