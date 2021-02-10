class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:

    ser ||= User.new # guest user (not logged in)
if user.superadmin_role?
      can :manage, :all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :manage, :dashboard         # allow access to dashboard
end
if user.supervisor_role?
      can :manage, User
endrails generate migration add_superadmin

  end
end
end