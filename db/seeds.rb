Player.destroy_all

p1 = Player.create :email => "craigslist@ga.co", :password => "chicken", :password_confirmation => "chicken"
p2 = Player.create :email => "jt@ga.co", :password => "chicken", :password_confirmation => "chicken"

Team.destroy_all

t1 = Team.create :name => "Rovers", :competition => "U-18 Men"
t2 = Team.create :name => "Strikers", :competition => "All-Age Men"

Season.destroy_all
s1 = Season.create :season => "1"
s2 = Season.create :season => "2"

t1.players << p1
t2.players << p2

s1.teams << t1 << t2
s2.teams << t1 << t2

s1.players << p1 << p2
s2.players << p1
