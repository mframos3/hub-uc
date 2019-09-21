module RoomsHelper
    def is_teacher?
        UserCourse.exists?(user_id: current_user.id, role: "Profesor")
    end

    def is_student?
        UserCourse.exists?(user_id: current_user.id, role: "Alumno")
    end
end
