class Room < ApplicationRecord
    acts_as_votable
    has_many :events, dependent: :destroy
    has_many :comments, as: :commentable, dependent: :destroy
    belongs_to :location

    def availability
        self.get_upvotes(:vote_scope => 'availability').size - self.get_downvotes(:vote_scope => 'availability').size
    end

    def noise
        self.get_upvotes(:vote_scope => 'noise').size - self.get_downvotes(:vote_scope => 'noise').size
    end

    def plugs
        self.get_upvotes(:vote_scope => 'plugs').size - self.get_downvotes(:vote_scope => 'plugs').size
    end
end
