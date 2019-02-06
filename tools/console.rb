# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#weightlifters
ebi = Lifter.new('Ebi', 1)
sarah = Lifter.new('Sarah', 2)
sam = Lifter.new('Sam', 3)

#gyms
gym1 = Gym.new('Gym1')
gym2 = Gym.new('Gym2')
gym3 = Gym.new('Gym3')


#memberships
membership1 = Membership.new(20, ebi, gym1)
membership2 = Membership.new(30, sarah, gym2)
membership3 = Membership.new(39, ebi, gym2)
membership1 = Membership.new(40, sam, gym3)



binding.pry

puts "Gains!"
