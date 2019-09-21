module MessagesHelper
    def get_user(user_id)
        User.find(user_id).name
    end

    def exists_email?(email)
        User.exists?(email: email)
    end

    def get_user_from_mail(email)
        User.find_by(email: email).id
    end     
end
