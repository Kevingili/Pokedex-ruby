class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.has_role?(:admin)
      can :manage, Pokemon
    else
      can :read, Pokemon
    end
  end
end
