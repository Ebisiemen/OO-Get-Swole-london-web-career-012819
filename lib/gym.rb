class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
      @@all
  end

  def all_memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def lifters
    all_memberships.map {|membership| membership.lifter}
  end

  def lifters_names
    lifters.map {|lifter| lifter.name}
  end

  def combined_lift_total
    arr_of_lift_totals = lifters.map {|lifter| lifter.lift_total}
    combined_lift_total = arr_of_lift_totals.inject(:+)
  end
end
