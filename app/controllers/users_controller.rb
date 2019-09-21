class UsersController < ApplicationController
    def index
        if params[:search]
            @users = User.search(params[:search])
        else
            @users = User.all
        end
    end

    def show
        @user = User.find(params[:id])
        unless ModeratorRole.exists?(user_id: @user.id)
            @user.remove_role :moderator
        end
        @student_courses_id = UserCourse.select(:course_id).where(user_id: @user.id).where(role: "Alumno")
        @teacher_courses_id = UserCourse.select(:course_id).where(user_id: @user.id).where(role: "Profesor")
        @user_role_id = UsersRole.select(:role_id).where(user_id: @user.id)
        @student_courses = Course.where(:id => @student_courses_id)
        @teacher_courses = Course.where(:id => @teacher_courses_id)
        @user_role = Role.where(:id => @user_role_id)
        @user_posts_count = Post.where(:user_id => @user.id).count
        @user_events_count = Event.where(:user_id => @user.id).count
        @user_comments_count = Comment.where(:user_id => @user.id).count
        render :layout => 'profile'
    end

    def edit
    end
end
