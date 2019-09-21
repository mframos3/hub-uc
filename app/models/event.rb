class Event < ApplicationRecord
    belongs_to :user
    belongs_to :room
    belongs_to :course
    has_many :user_events, dependent: :destroy
    has_many :users, :through => :user_events
end
