class Post < ApplicationRecord
    acts_as_votable
    belongs_to :user
    belongs_to :course
    has_many :comments, as: :commentable, dependent: :destroy

    def score
        self.get_upvotes.size - self.get_downvotes.size
    end
end
