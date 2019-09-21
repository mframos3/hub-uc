class Course < ApplicationRecord
    resourcify
    has_many :user_courses, dependent: :destroy
    has_many :users, :through => :user_courses
    has_many :posts, dependent: :destroy
    has_many :moderator_roles, dependent: :destroy
    has_many :events, dependent: :destroy
    has_many :moderator_requests, dependent: :destroy

    def self.search(search)
        if search
            course = Course.where('name like ?', '%' + search.capitalize + '%')
            if course
                self.where(id: course)
            else
                Course.none
            end
        else
            Course.none
        end
    end

        private

            def course_params
                params.require(:course).permit(:name, :initials, :search, :id)
            end
end
