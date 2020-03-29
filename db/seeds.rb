User.destroy_all
u1 = User.create :name => 'Gary', :email => 'gary@gmail.com', :password => 'fish', :admin => true, :postcode => 2000, :is_responder => true
u2 = User.create :name => 'Lola', :email => 'lola@gmail.com', :password => 'fish', :postcode => 2041
u3 = User.create :name => 'Billy', :email => 'billy@gmail.com', :password => 'fish', :postcode => 2022
u4 = User.create :name => 'Ruby', :email => 'ruby@gmail.com', :password => 'fish', :postcode => 2001, :is_responder => true
puts "#{User.count} users created"

Responder.destroy_all
v1 = Responder.create
v2 = Responder.create
v3 = Responder.create
v4 = Responder.create
puts "#{Responder.count} responders created"

Requester.destroy_all
r1 = Requester.create
r2 = Requester.create
r3 = Requester.create
r4 = Requester.create
puts "#{Requester.count} requesters created"

Task.destroy_all
t1 = Task.create :name => 'Milk ASAP', :description => 'Currently in 2 week imposed quarantine and need milk!', :category => 'Groceries', :urgency => 'High'
t2 = Task.create :name => 'Puzzles Wanted', :description => 'Running out of puzzles to solve. Does anyone have one to share?', :category => 'Entertainment', :urgency => 'Low'
t3 = Task.create :name => 'Post my parcel', :description => 'Family friends birthday in the UK and want to send a bithday gift. Can someone please assist in taking it to the post office?', :category => 'Assistance', :urgency => 'Medium'
t4 = Task.create :name => 'Friendly Phone Chat', :description => 'Just miss talking to someone. Open for a chat about anything!', :category => 'Entertainment', :urgency => 'Low', :active => false
puts "#{Task.count} tasks created"

Location.destroy_all

# ASSOCIATIONS ########################################
puts "Responders and Users"
u1.responders << v1
u2.responders << v2
u3.responders << v3
u4.responders << v4

puts "Requesters and Users"
u1.requesters << r1
u2.requesters << r2
u3.requesters << r3
u4.requesters << r4

puts "Requesters and Tasks"
r2.tasks << t1 << t2
r3.tasks << t3 << t4

puts "Responders and Tasks"
v1.tasks << t2
v4.tasks << t1
v4.tasks << t3
