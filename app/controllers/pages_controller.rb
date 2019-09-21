class PagesController < ApplicationController
  def home
    if current_user
      @courses_publications = Post.where(:course_id => current_user.courses).order(created_at: :desc).limit(5)
      @study_events = []
      @search_events = []
      @offer_events = []
      @courses = UserCourse.where(user_id: current_user.id).pluck(:course_id)
      @tch_cs = UserCourse.where(user_id: current_user.id, role: "Profesor").pluck(:course_id)
      @st_cs = UserCourse.where(user_id: current_user.id, role: "Alumno").pluck(:course_id)
      Event.all.order(created_at: :desc).each do |event|
        if @courses.include?(event.course_id) && event.e_type == 'Study'
          if @study_events.length < 5
            @study_events << event
          end
        elsif @tch_cs.include?(event.course_id) && event.e_type == 'Search'
          if @search_events.length < 5
            @search_events << event
          end
        elsif @st_cs.include?(event.course_id) && event.e_type == 'Offer'
          if @offer_events.length < 5
            @offer_events << event
          end
        end
      end
    end
  end
end
