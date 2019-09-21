# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :newuser
      can :read, :all
      can :manage, Room, :availability
      can :manage, Room, :noise
      can :manage, Room, :sockets
      can :create, Post
      can :manage, Post, user_id: user.id
      can :manage, Post, :score
      can :create, Event
      can :manage, Event, user_id: user.id
      can :create, ModeratorRequest
      can :update, ModeratorRequest, user_id: user.id
      if user.has_role? :moderator
        can :manage, Post
        can :manage, Event
      end
    else
      can :read, :all
    end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
