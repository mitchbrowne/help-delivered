User.destroy_all
u1 = User.create :name => 'Gary', :email => 'gary@gmail.com', :password => 'fish', :admin => true, :postcode => 2000, :volunteer => true
u2 = User.create :name => 'Lola', :email => 'lola@gmail.com', :password => 'fish', :postcode => 2041
u3 = User.create :name => 'Billy', :email => 'billy@gmail.com', :password => 'fish', :postcode => 2022
puts "#{User.count} users created"


Task.destroy_all
t1 = Task.create :name => 'Milk ASAP', :description => 'Currently in 2 week imposed quarantine and need milk!', :category => 'Groceries', :urgency => 'High'
t2 = Task.create :name => 'Puzzles Wanted', :description => 'Running out of puzzles to solve. Does anyone have one to share?', :category => 'Entertainment', :urgency => 'Low'
t3 = Task.create :name => 'Post my parcel', :description => 'Family friends birthday in the UK and want to send a bithday gift. Can someone please assist in taking it to the post office?', :category => 'Assistance', :urgency => 'Medium'
t4 = Task.create :name => 'Friendly Phone Chat', :description => 'Just miss talking to someone. Open for a chat about anything!', :category => 'Entertainment', :urgency => 'Low', :active => false
puts "#{Task.count} tasks created"

Location.destroy_all

# ASSOCIATIONS ########################################
puts "Tasks and Users"
u1.tasks <<
