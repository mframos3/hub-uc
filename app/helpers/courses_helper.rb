module CoursesHelper
   def is_joined_to_course?(course_id)
   if current_user
      UserCourse.exists?(user_id: current_user.id, course_id: course_id)
   else
      false
   end
   end
end
